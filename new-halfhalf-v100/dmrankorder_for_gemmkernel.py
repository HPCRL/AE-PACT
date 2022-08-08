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

    abs_lop = min_predict_time_top - min_actual_time
    LOP = abs_lop / min_actual_time

    # print("Gemm df\n", df)
    # print("df_sort_by_predict\n", df_sort_by_predict)
    # print("df_sort_by_truth\n", df_sort_by_truth)
    # print("truth_topN_list \n", truth_topN_list)
    # print("predict_topN_real_time_list\n", predict_topN_real_time_list)
    # print("-- trial_name- LOP", trial_name, LOP)

    return (trial_name, truth_topN_list, predict_topN_real_time_list)

def add_features(K, H, C, S, Stride, T_p, T_k, T_c, W_p, W_k, W_c, B_p, B_k, B_c, TILE_C, alt, Time, machine_info):
    G2S_bandwidth = machine_info['G2S_bandwidth']
    R2S_bandwidth = machine_info['R2S_bandwidth']

    W = H
    R = S
    P = W*H
    warpsPerBlock = (B_p * B_k * B_c)

    blockCountP = P / (T_p * W_p * B_p)
    blockCountK = K / (T_k * W_k * B_k)
    num_TB = (blockCountP * blockCountK)

    memTileP = T_p * W_p * B_p
    memTileK = T_k * W_k * B_k

    sharedMemoryIn = memTileP * TILE_C
    sharedMemoryKern = memTileK * TILE_C
    
    
    # DV G-->S
    G2S_input = num_TB * math.ceil(sharedMemoryIn * C / TILE_C / 32)
    G2S_kernel = num_TB * math.ceil(sharedMemoryKern * C /TILE_C / 32)

    # DV S-->reg
    S2R_input = T_p * warpsPerBlock * num_TB * C /2    # vect 2 load 
    S2R_kernel = T_k * warpsPerBlock * num_TB * C /2


    G2S_trans = G2S_input+G2S_kernel
    S2R_trans = S2R_input+S2R_kernel
    Ops = H * W * R * S * C * K

    a = (G2S_trans ) / G2S_bandwidth  # GB/s
    b = (S2R_trans ) / R2S_bandwidth # GB/s
    score = max(a, b)


    if alt == 1:
        return [K, H, C, S, Stride, T_p, T_k, T_c, W_p, W_k, W_c, B_p, B_k, B_c, TILE_C, Time, score]
    else:
        return []



def expand_csv(file, alt, stride, if_train, if_norm, pass_norm_factor, machine_info):
    filename = os.path.splitext(file)[0]
    print("Rank -------------------------handling ", filename)
   
    new_header = ""
    # manually register feature set here and also add_features()
    if alt == 1:
        new_header = "K, H, C, S, Stride, T_p, T_k, T_c, W_p, W_k, W_c, B_p, B_k, B_c, TILE_C, Time,  Predict"
   

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
        K = int(cur_list[0])
        H = int(cur_list[1])
        W = int(cur_list[2])
        C = int(cur_list[3])
        R = int(cur_list[4])
        T_p = int(cur_list[5])
        T_k = int(cur_list[6])
        T_c =  int(cur_list[7])
        W_p = int(cur_list[8])
        W_k = int(cur_list[9])
        W_c = int(cur_list[10])
        B_p = int(cur_list[11]) 
        B_k = int(cur_list[12])
        B_c = int(cur_list[13])
        Tile_C = int(cur_list[14])


        new_features = add_features(K, H, C, R, stride, T_p, T_k, T_c, W_p, W_k, W_c, B_p, B_k, B_c, Tile_C, 
                                    alt, float(cur_list[15]), machine_info)

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

                _, test_expand_df = expand_csv(os.path.join(path, file), alt, stride, False, if_norm, None, machine_info)          
               
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
    

def RANK_gemm(dirpath, machine_info,  topN, step, initN):
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
    # if_norm = True
    # norm_summary = gen_res_table(path, train_set, tp, stride, if_norm)
    
    #  """
    # For crearing standlone csv result
    # """
    # summary_file = open("gemmkernel_rankorder_summary.csv", "w")
    # for tp in range(initN, topN, step):   
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
    RANK_gemm(dirpath, machine_info,  topN, step, initN)
   


            




