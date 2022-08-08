import os
import math
import copy

import pandas as pd
from sklearn.linear_model import LinearRegression
from sklearn import tree
from sklearn.ensemble import RandomForestRegressor, GradientBoostingRegressor, AdaBoostRegressor

from utilfunc import table_view, random_order_csv, preapre_line_data, intersection
from utildataprepare import prepare_validate_set, prepare_indp_test_set


def avg_LOP_precision(truth_topN_list, predict_topN_real_time_list, topN):
    truth_topN_list.sort()
    predict_topN_real_time_list.sort()


    sum_truth = sum(truth_topN_list) # toN real/ground time
    sum_predict = sum(predict_topN_real_time_list) # sorted based on sc --> time
    avg_lop = (sum_predict-sum_truth)/sum_truth

    True_positive_num = intersection(truth_topN_list, predict_topN_real_time_list)
    precision = len(True_positive_num) / topN


    # print("True_positive_num", True_positive_num, len(True_positive_num))
    # print("topN", topN)
    # print("precision", precision)
    # print("avg_lop", avg_lop)
    return avg_lop, precision

def LOP_summary(df, topN, trial_name):
    # make 2 copy of the output df and sorted seperatly
    df_sort_by_truth = df.copy(deep=True)
    df_sort_by_predict = df.copy(deep=True)

    df_sort_by_predict = df_sort_by_predict.sort_values(by=["Predict"])
    df_sort_by_truth = df_sort_by_truth.sort_values(by=["Time"])


    truth_topN_list = df_sort_by_truth["Time"][0:topN]
    predict_topN_real_time_list = df_sort_by_predict["Time"][0:topN]
    min_actual_time = min(truth_topN_list)
    min_predict_time_top = min(predict_topN_real_time_list)

    abs_lop = min_predict_time_top - min_actual_time
    LOP = abs_lop / min_actual_time

    # print("df\n", df)
    # print("df_sort_by_predict\n", df_sort_by_predict)
    # print("df_sort_by_truth\n", df_sort_by_truth)
    # print("truth_topN_list \n", truth_topN_list)
    # print("predict_topN_real_time_list\n", predict_topN_real_time_list)
    # print("-- trial_name- LOP", trial_name, LOP)

    # print("trial_name", trial_name)
    # print("truth_topN_list \n", df_sort_by_truth[:][0:topN])
    # print("predict_topN_real_time_list \n", df_sort_by_predict[:][0:topN])


    #avg_lop, precision = avg_LOP_precision(truth_topN_list.tolist(), predict_topN_real_time_list.tolist(), topN)


    return (trial_name, truth_topN_list, predict_topN_real_time_list, df_sort_by_predict)

def LOP_summary_for_validate(df, topN):
    df_sort_by_truth = df.copy(deep=True)
    df_sort_by_predict = df.copy(deep=True)

    df_sort_by_predict = df_sort_by_predict.sort_values(by=["Predict"])
    df_sort_by_truth = df_sort_by_truth.sort_values(by=["Time"])


    truth_topN_list = df_sort_by_truth["Time"][0:topN]
    predict_topN_real_time_list = df_sort_by_predict["Time"][0:topN]

    

    min_actual_time = min(truth_topN_list)
    min_predict_time_top = min(predict_topN_real_time_list)
    abs_lop = min_predict_time_top - min_actual_time
    LOP = abs_lop / min_actual_time

    # print("--------------------------")
    # # print("df_sort_by_predict", df_sort_by_predict)
    # # print("df_sort_by_truth", df_sort_by_truth)
    # # print("truth_topN_list \n", truth_topN_list)
    # # print("predict_topN_real_time_list\n", predict_topN_real_time_list)
    # print("LOP ", LOP)
    # print("===========================")

    return LOP

def add_features(K, H, C, S, Stride, Tk, Th, Tw, Bk, Bh, Bw, CMult, alt, machine_info):
    maxRegSM = machine_info['maxRegSM'] 
    maxWordsOfSharedMemorySM = machine_info['maxWordsOfSharedMemorySM']
    maxWarpsSM = machine_info['maxWarpsSM']
    num_of_SM = machine_info['num_of_SM']
    num_of_SM = 68 # for 2080

    W = H
    R = S
    warpsPerBlock = (Bh * Bw * Bk) / 32
    Tc = 1

    blockCountH = H / (Bh * Th)
    blockCountW = W / (Bw * Tw)
    blockCountK = K / (Bk * Tk)
    num_TB = (blockCountH * blockCountW * blockCountK) * CMult


    sharedMemoryIn = (Bh * Th * Stride + R - 1) * (Bw * Tw * Stride + S - 1)
    sharedMemoryOut = (Bh * Th) * (Bw * Tw) * Bk * 1

    G2S_input = num_TB * ((Bh * Th * Stride + R - 1) * math.ceil((Bw * Tw * Stride + S - 1) / 32)) * C / CMult
    S2G_output = num_TB * Tk * (Bh * Th) * (Bw * Tw)

    G2R_kernel = (R * S * Tk) * warpsPerBlock * num_TB * C / CMult

    S2R_input = ((Th * Stride + R - 1) * (Tw * Stride + S - 1)) * warpsPerBlock * num_TB * C / CMult
    R2S_output = (Tk * Th * Tw) * warpsPerBlock * num_TB 

    totalShared = (sharedMemoryIn + sharedMemoryOut)
    registersUsed_per_thread = Th * Tw * Tk + (Th + R - 1) * (Tw + S - 1) * Tc + 1
    totalRegistersUsedBlock = registersUsed_per_thread * 32 * warpsPerBlock

    blocksPerSMWarps = int(maxWarpsSM / warpsPerBlock)
    blocksPerSMSharedMemory = int(maxWordsOfSharedMemorySM / totalShared)
    blocksPerSMReg = int(maxRegSM / totalRegistersUsedBlock)

    blocksPerSM = min(blocksPerSMWarps, blocksPerSMSharedMemory, blocksPerSMReg)
    warpsPerSM = warpsPerBlock * blocksPerSM

    # theo occupancy
    occupancy = warpsPerSM / (maxWarpsSM * 1.0)
    recp_occupancy = 1 / occupancy

    # wave
    wave = 1.0 * num_TB / num_of_SM
    cwave = math.ceil(wave)
    c_over_w = cwave / wave
    correct_wave = (math.ceil(1.0 * num_TB / num_of_SM / blocksPerSM))

    # concurrent TB
    conc_tb = num_TB / correct_wave / num_of_SM
    #balance = (math.ceil(correct_wave)-correct_wave)/ math.ceil(correct_wave)


    G2S_trans = G2S_input
    S2G_trans = S2G_output
    S2R_trans = S2R_input
    R2S_trans = R2S_output
    G2R_trans = G2R_kernel
    Ops = H * W * R * S * C * K

    if alt == 1:
        return [K, H, C, S, Stride, Th, Tw, Tk, Bh, Bw, Bk, CMult]
    # elif alt == 2:
    #     return [K, H, C, S, Stride, Th, Tw, Tk, Bh, Bw, Bk, CMult, Ops, G2S_trans, S2R_trans, S2G_trans, R2S_trans, G2R_kernel, recp_occupancy, correct_wave, conc_tb]
    elif alt == 2:
        return [K, H, C, S, Stride, Th, Tw, Tk, Bh, Bw, Bk, CMult, Ops, G2S_trans, S2R_trans, S2G_trans, R2S_trans, G2R_kernel, recp_occupancy, correct_wave, conc_tb, warpsPerBlock, num_TB, totalShared, totalRegistersUsedBlock]
    else:
        return []


def expand_csv(file, alt, stride, if_train, if_norm, pass_norm_factor, machine_info):
    filename = os.path.splitext(file)[0]
    print("-------------------------handling ", filename)
   
    new_header = ""
    # manually register feature set here and also add_features()
    if alt == 1:
        new_header = "K, H, C, S, Stride, Th, Tw, Tk, Bh, Bw, Bk, CMult, Time"
    # if alt == 2:  # problem sizes, stride, tile sizes, OPs, GM-transactions, SM-transactions,
    #     new_header = "K, H, C, S, Stride, Th, Tw, Tk, Bh, Bw, Bk, CMult, Ops, G2S_trans, S2R_trans, S2G_trans, R2S_trans, G2R_kernel, recp_occupancy, correct_wave, conc_tb, Time"
    if alt == 2:  # problem sizes, stride, tile sizes, OPs, GM-transactions, SM-transactions,
        new_header = "K, H, C, S, Stride, Th, Tw, Tk, Bh, Bw, Bk, CMult, Ops, G2S_trans, S2R_trans, S2G_trans, R2S_trans, G2R_kernel, recp_occupancy, correct_wave, conc_tb, warpsPerBlock, num_TB, totalShared, totalRegistersUsedBlock, Time"


    row_list = []
    ss = 0
    Error_flag = False
    for l in open(file):
        if Error_flag:
            Error_flag = False      # Skip nextline()
            continue
        if ss == 0:  # skip header
            ss += 1
            continue
        if "," not in l or "Error" in l:    # skip error
            Error_flag = True
            continue
        cur_list = l.split(",")
        new_features = add_features(int(cur_list[0]), int(cur_list[1]), int(cur_list[3]), int(cur_list[4]), stride, #K H W C RS#
                                    int(cur_list[5]), int(cur_list[6]), int(cur_list[7]),
                                    int(cur_list[8]), int(cur_list[9]), int(cur_list[10]),
                                    int(cur_list[11]), alt, machine_info)

        new_features.append(float(cur_list[12]) * 1000)  # promote it to micro-sec
        row_list.append(new_features)

    assert new_header != "", "expand csv fails"
    new_header_list = new_header.split(",")
    new_header_list = [item.strip() for item in new_header_list]
    #print (new_header_list)
    df = pd.DataFrame(columns=new_header_list, data=row_list)

    norm_factor = {}
    if if_norm and if_train:        #normalize and handle training set
        for i in new_header_list:
            col_list = df[i].to_list()
            min_val = min(col_list)
            max_val = max(col_list)
            if min_val != max_val:
                col_list = [(float(item)-min_val)/(1.0 * max_val-min_val) for item in col_list]
            
            for elem in range(0, len(col_list)):   # avoid 0 and give a tiny tiny value
                if col_list[elem] == 0:
                    col_list[elem] = 1e-15

            df[i] = col_list
            norm_factor[i] = [min_val, max_val]     
            
    elif if_norm and not if_train: # normalize and handle test set
        for i in new_header_list:
            col_list = df[i].to_list()
            min_val = pass_norm_factor[i][0]
            max_val = pass_norm_factor[i][1]
            if min_val != max_val:
                col_list = [(float(item)-min_val)/(1.0 * max_val-min_val) for item in col_list]
            for elem in range(0, len(col_list)):   # avoid 0 and give a tiny tiny value
                if col_list[elem] == 0:
                    col_list[elem] = 1e-15
            df[i] = col_list
    
    return norm_factor, df # return normalize_factor and expaned df



def gen_res_table(path, model_dict, stride, if_norm,  machine_info,  topN, step, initN, algo_list, algo_name):  # ab path
    #algo_list = [LinearRegression(), tree.DecisionTreeRegressor(random_state=17, max_depth = 20), RandomForestRegressor(random_state=17, max_depth = 20), AdaBoostRegressor(random_state=17),  GradientBoostingRegressor(random_state=17, max_depth = 20)]
    #algo_list = [ tree.DecisionTreeRegressor(random_state=17), RandomForestRegressor(random_state=17), ]
    #algo_name = ["DecisionTreeRegressor", "RandomForestRegressor"]
    
    alt_list = [1,2]
    
    summary = {}
    all_summary = {}

    #regresson
    for alt in alt_list:
        for file in os.listdir(path):
            if file.endswith(".csv") and file.startswith("Reg."):
                filename = os.path.splitext(file)[0]
                print("~~ alt : ", alt)


                # 3-level dict
                if filename not in summary.keys():
                    summary[filename]= {}
                if alt not in summary[filename].keys():
                    summary[filename][alt] = []

                # process test data for a new features set
                _, test_expand_df = expand_csv(os.path.join(path, file), alt, stride, False, if_norm, None, machine_info)
                 
                
                norm_str = "norm" if if_norm else ""
                for al_name in algo_name:
                    trial_name = al_name + "_alt" + str(alt) + "_"+norm_str
                    model_name = model_dict[alt][al_name][0]
                    model = model_dict[alt][al_name][1]

                    x_test = test_expand_df.iloc[:, :-1].values
                    y_test = test_expand_df.iloc[:, -1].values      #ground truth

      
                    y_pred = model.predict(x_test)

                    # generate df -- [Features, TurthTime, PredictScore]
                    out_df = test_expand_df.copy(deep=True)
                    out_df["Predict"] = y_pred


                    for tp in range(initN, topN+1, step):
                        summary = {}
                        if tp not in all_summary.keys():
                            # 3-level dict
                            if filename not in summary.keys():
                                summary[filename]= {}
                            if alt not in summary[filename].keys():
                                summary[filename][alt] = []
                            #out_df.to_csv("output_"+ filename + "_" +trial_name + str(tp) +".csv")
                            lop_tuple= LOP_summary(out_df, tp, trial_name)
                            # print("tp not in", tp)
                            # print(all_summary)
                            summary[filename][alt].append(lop_tuple)
                            all_summary[tp] = (summary)
                        else:
                            #out_df.to_csv("output_"+ filename + "_" +trial_name + str(tp) +".csv")
                            lop_tuple= LOP_summary(out_df, tp, trial_name)
                            # print("tp in", tp)
                            summary = all_summary[tp]
                            if filename not in summary.keys():
                                summary[filename]= {}
                            if alt not in summary[filename].keys():
                                summary[filename][alt] = []
                            # print(temp)
                            # here has some issues
                            summary[filename][alt].append(lop_tuple)
                        

    
    return all_summary
 

def St2_buildML(dirpath, machine_info,  topN, step, initN, train_set_file, indepent_test_set_file, split_ratio, list_random_state, algo_list, algo_name, template_name):
    print("working path ", dirpath)
    assert len(list_random_state) > 0
    

    stride = 2
    #algo_list = [LinearRegression(), tree.DecisionTreeRegressor(random_state=17, max_depth = 20), RandomForestRegressor(random_state=17, max_depth = 20), AdaBoostRegressor(random_state=17),  GradientBoostingRegressor(random_state=17, max_depth = 20)]
    
    # algo_list = [ tree.DecisionTreeRegressor(random_state=19), RandomForestRegressor(random_state=19), ]
    # algo_name = ["DecisionTreeRegressor", "RandomForestRegressor"]
    
    alt_list = [1,2]
    
    """
    {alt1 -- {algo_name: best model }
          |- {algo_name: best model }
     alt2 -- {algo_name: best model }
          |- {algo_name: best model }
    }
    """
    all_model_dict = {}

    if_norm = False

    #regresson
    for alt in alt_list:
        print("alt :", alt)
        # prepare training df 
        # process train data for a new features set
        norm_factor, train_expand_df = expand_csv(os.path.join(dirpath, train_set_file), alt, stride, True, if_norm, None, machine_info)  
        _, test_expand_df =  expand_csv(os.path.join(dirpath, indepent_test_set_file), alt, stride, True, if_norm, None, machine_info)   
        
        list_test_df = prepare_indp_test_set(test_expand_df)

        
        model_dict = {}
        i = 0
        for al in algo_list:
            best_model_avg_cost = 10000
            best_model_max_cost = 10000
            best_model = None
            best_model_name = ""
            for seed in list_random_state:
                al.set_params(**{"random_state":seed})

                indi_test_avg_lop = []
                indi_test_max_lop = []
              
                #print(al.get_params())
                x_train = train_expand_df.iloc[:, :-1].values   # not include time value
                y_train = train_expand_df.iloc[:, -1].values    # time value x1000

                regressor = al

                regressor.fit(x_train, y_train)
                
                # test set
                test_lop_list = []
                for test_df in list_test_df:
                    x_test = test_df.iloc[:, :-1].values
                    y_test = test_df.iloc[:, -1].values      #ground truth
                    y_pred = regressor.predict(x_test)
                    out_df = test_df.copy(deep=True)
                    out_df["Predict"] = y_pred

                    lop = LOP_summary_for_validate(out_df, topN)
                    test_lop_list.append(lop)

                    
                test_avg_lop = sum(test_lop_list)/len(test_lop_list)
                test_max_lop = max(test_lop_list)
                print("[{}] seed {}  : The average indp-test avg {}".format(algo_name[i], seed, test_avg_lop) )

                if test_avg_lop < best_model_avg_cost:
                    best_model_name = algo_name[i]+"_"+template_name+"_"+str(alt)+".pkl"
                    best_model = copy.deepcopy(regressor)
                    best_model_avg_cost = test_avg_lop
                    best_model_max_cost = test_max_lop
                elif test_avg_lop == best_model_avg_cost and test_max_lop < best_model_max_cost:
                    best_model_name = algo_name[i]+"_"+template_name+"_"+str(alt)+".pkl"
                    best_model = copy.deepcopy(regressor)
                    best_model_avg_cost = test_avg_lop
                    best_model_max_cost = test_max_lop
            
            import joblib
            joblib.dump(best_model, best_model_name) 
            model_dict[algo_name[i]] = (best_model_name, best_model)
            i+=1 # choose next model
        
        all_model_dict[alt] = model_dict

    return all_model_dict





def St2(dirpath, machine_info,  topN, step, initN, all_model_dict, algo_list, algo_name):
    print("working path ", dirpath)
    stride = 2

    #shuffling test-set
    for file in os.listdir(dirpath):
        print("working file ", file)
        if file.endswith(".csv") and file.startswith("Reg."):
            random_order_csv(file, dirpath)
    print("Done shuffling")

    if_norm = False
    big_not_norm_summary = gen_res_table(dirpath, all_model_dict, stride, if_norm, machine_info, topN, step, initN, algo_list, algo_name)
    
    
    
    # if_norm = True
    # norm_summary = gen_res_table(path, train_set, tp, stride, if_norm)
    # summary_file = open("rs_c_summary_st2.csv", "w")
    # for tp in range(5, 40, 5):    
    #     summary_file.write("topN : " + str(tp) + "\n")
    #     not_norm_summary = big_not_norm_summary[tp]
    #     alt_list = [1,2]
    #     for alt in alt_list:
    #         temp_dict = {}
    #         for key, value in not_norm_summary.items():
    #             temp_dict[key] = value[alt]
            
    #         table_view(temp_dict, summary_file)
        
    #     x_label = set() # test file name
    #     data_table = {}
    #     algo_set = set()
    #     for alt in alt_list:
    #         temp_dict = {}
    #         for key, value in not_norm_summary.items():
    #             temp_dict[key] = value[alt]
    #         x_label, data_table, algo_set = preapre_line_data(temp_dict, x_label, data_table, algo_set)

    #     # print("!!!!x_label", x_label)
    #     # print("!!!!", data_table)
    #     # print("!!!!", algo_set)
     
    # summary_file.close()
    return big_not_norm_summary


if __name__ == '__main__':
    St2(dirpath, machine_info,  topN, step, initN, all_model_dict)


            




