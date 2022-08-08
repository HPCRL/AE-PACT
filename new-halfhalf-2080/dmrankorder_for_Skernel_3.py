import os
import math
import random
import pandas as pd
from utilfunc import table_view, random_order_csv

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

    return (trial_name, truth_topN_list, predict_topN_real_time_list)

def add_features(K, H, C, S, Stride, Th, Tw, Tk, Wh, Ww, Wk, Bh, Bw, Bk, alt, Time, machine_info):
    G2S_bandwidth = machine_info['G2S_bandwidth']
    R2S_bandwidth = machine_info['R2S_bandwidth']

    W = H
    R = S
    warpsPerBlock = (Bh * Bw * Bk)

    blockCountH = H / (Bh * Wh * Th)
    blockCountW = W / (Bw * Ww * Tw)
    blockCountK = K / (Bk * Wk * Tk)
    num_TB = (blockCountH * blockCountW * blockCountK)

    sharedMemoryIn = (Bh * Th * Wh + S - 1) * (Bw * Tw * Ww + R - 1) * 2
    sharedMemoryOut = (Bh * Th * Wh) * (Bw * Tw * Ww) * (Wk * Bk)
    sharedMemoryKern = (S * R) * (Bk * Tk * Wk) * 2

    # DV G-->S
    G2S_input = num_TB * math.ceil(sharedMemoryIn * C / 2 / 32)
    G2S_kernel = num_TB * math.ceil(sharedMemoryKern * C / 2 / 32)

    # DV S-->reg
    S2R_input = (R * (Tw + S - 1)) * warpsPerBlock * num_TB * C
    S2R_kernel = (R * S * Tk) * warpsPerBlock * num_TB * C

    #R2S
    R2S_output = (Tk * Th * Tw) * warpsPerBlock * num_TB 
    #S2G
    S2G_output = num_TB * (Tk * Bk * Tk) * (Wh * Bh * Th) * (Ww * Bw * Tw)


    G2S_trans = G2S_input+G2S_kernel
    S2R_trans = S2R_input+S2R_kernel
    R2S_trans = R2S_output
    S2G_trans = S2G_output
   


    a = (G2S_trans +  S2G_trans) / G2S_bandwidth  # GB/s
    b = (S2R_trans + R2S_trans)  / R2S_bandwidth # GB/s
    score = max(a, b)



    if alt == 1:
        return [K, H, C, S, Stride, Th, Tw, Tk, Wh, Ww, Wk, Bh, Bw, Bk, Time, score]
    else:
        return []


def expand_csv(file, alt, stride, if_train, if_norm, pass_norm_factor, machine_info):
    filename = os.path.splitext(file)[0]
    print("-------------------------handling ", filename)
   
    new_header = ""
    # manually register feature set here and also add_features()
    if alt == 1:
        new_header = "K, H, C, S, Stride, Th, Tw, Tk, Wh, Ww, Wk, Bh, Bw, Bk, Time, Predict"     # here predict is the value of DV/BDW
    
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

        new_features = add_features(int(cur_list[0]), int(cur_list[1]), int(cur_list[3]), int(cur_list[4]), stride,
                                    int(cur_list[5]), int(cur_list[6]), int(cur_list[7]),
                                    int(cur_list[8]), int(cur_list[9]), int(cur_list[10]),
                                    int(cur_list[11]), int(cur_list[12]), int(cur_list[13]), alt, float(cur_list[14]), machine_info )
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


def gen_res_table(path, stride, if_norm, machine_info,  topN, step, initN):  # ab path
    alt_list = [1]
    
    summary = {}
    all_summary = {}

    for alt in alt_list:
        # go through all test data
        for file in os.listdir(path):
            if file.endswith(".csv") and file.startswith("Reg."):
                filename = os.path.splitext(file)[0]
              
                print("~~ alt : ", alt)

                # 3-level dict
                if filename not in summary.keys():
                    summary[filename]= {}
                if alt not in summary[filename].keys():
                    summary[filename][alt] = []

                _, test_expand_df = expand_csv(os.path.join(path, file), alt, stride, False, if_norm, None, machine_info)          # process test data for a new features set
               
                # generate df -- [Features, TurthTime, PredictScore]
                out_df = test_expand_df.copy(deep=True)
                trial_name = "rank ordered "
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
                    

    #print(summary)
    return all_summary
    

def RANK_S(dirpath, machine_info,  topN, step, initN):    
    stride = 1

    print("working path ", dirpath)

    #shuffling test-set
    for file in os.listdir(dirpath):
        print("working file ", file)
        if file.endswith(".csv") and file.startswith("Reg."):
            random_order_csv(file, dirpath)
    print("Done shuffling")
    
    
    #tabulate non-normalized
    if_norm = False
    big_not_norm_summary = gen_res_table(dirpath, stride, if_norm, machine_info, topN, step, initN)

    
    # """
    # For crearing standlone csv result
    # """
    #summary_file = open("skernel_rankorder_summary.csv", "w")
    # for tp in range(initN, topN+1, step):    
    #     summary_file.write("topN : " + str(tp) + "\n")
    #     not_norm_summary = big_not_norm_summary[tp]
    #     alt_list = [1]
    #     for alt in alt_list:
    #         temp_dict = {}
    #         for key, value in not_norm_summary.items():
    #             temp_dict[key] = value[alt]
            
    #         table_view(temp_dict, summary_file)
    # summary_file.close()
    return big_not_norm_summary



if __name__ == '__main__':
    RANK_S(dirpath)
   


            




