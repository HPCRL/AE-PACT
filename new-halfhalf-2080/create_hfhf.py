from dmrankorder_for_RSkernel import RANK_RS
from dmrankorder_for_Skernel_3 import RANK_S
from dmrankorder_for_gemmkernel import RANK_gemm
from dmrankorder_for_RSkernel_stride2 import RANK_st2

from res_table_for_RSkernel import RS3, RS3_buildML
from res_table_for_Skernel_3 import S3, S3_buildML
from res_table_for_gemmkernel import Gemm, Gemm_buildML
from res_table_for_RSkernel_stride2 import St2, St2_buildML

from res_processing import pure_dv_half_half, special_non_half_pure_dv, ml_hybrid_half_half, special_non_half_ML_hybrid
from machine_info_regi import get_machine_info
import sys
import os


from sklearn.linear_model import LinearRegression
from sklearn import tree
from sklearn.ensemble import RandomForestRegressor, GradientBoostingRegressor, AdaBoostRegressor



layers_dict = {}
def register_problem_size(layername, ps):
    """
    ps is a problem size list(output)  [C H W K rs stride]
    """
    global layers_dict
    layers_dict[str(ps)] = layername



def parse_filename(filename, layers_dict, stride):
    ind = filename.find("em")
    # KxHxW_C_rs
    ps_str = filename[ind + 2:]
    k = int(ps_str[0:ps_str.index('x')])
    ps_str = ps_str[ps_str.index('x')+1:]
    h = int(ps_str[0:ps_str.index('x')])
    ps_str = ps_str[ps_str.index('x')+1:]
    w = int(ps_str[0:ps_str.index('_')])
    ps_str = ps_str[ps_str.index('_')+1:]
    c = int(ps_str[0:ps_str.index('_')])
    ps_str = ps_str[ps_str.index('_')+1:]
    rs = int(ps_str)

    ps = [c, h, w, rs, k, stride]
    return layers_dict[str(ps)]



def create_fig(summary_list_group, rank_summary_list_group, topN):
    x_label = []
    datatable = {}
    datatable["RandomForestRegressor_alt1_"] = []
    datatable["RandomForestRegressor_alt2_"] = []
    datatable["rank_ordered"] = []


    # here make the same order
    for summary_list in summary_list_group:
        for e in summary_list:
            if e[0] == topN:
                print("** file name {} | {} | {} ".format(e[1], e[2], e[3]) )
                if e[1] not in x_label: # collect label info
                    
                    x_label.append(e[1])
                if e[2] == 1:
                    datatable["RandomForestRegressor_alt1_"].append(e[3])
                if e[2] == 2:
                    datatable["RandomForestRegressor_alt2_"].append(e[3])

    for rank_summary_list in rank_summary_list_group:
        for e in rank_summary_list:
            print("++ file name {} | {} | {} ".format(e[1], e[2], e[3]) )
            if e[0] == topN: 
                datatable["rank_ordered"].append(e[3])

    print("x_label", x_label)
    print("datatable", datatable)


import pandas as pd

if __name__ == '__main__':

    pd.set_option('max_columns', None)
    topN = int(sys.argv[1])
    initN = int(sys.argv[2])
    step = int(sys.argv[3])
    no_model = int(sys.argv[4])

    machine_info = get_machine_info("2080ti")


    register_problem_size("yolo0", [3, 544, 544, 3, 32, 1])
    register_problem_size("yolo2", [32, 272, 272, 3, 64, 1])
    register_problem_size("yolo4", [64, 136, 136, 3, 128, 1])
    register_problem_size("yolo5", [128, 136, 136, 1, 64, 1]) #it will do yolo4 again 
    register_problem_size("yolo8", [128, 68, 68, 3, 256, 1])
    register_problem_size("yolo9", [256, 68, 68, 1, 128, 1])  #it will do yolo8 again 
    register_problem_size("yolo12", [256, 34, 34, 3, 512, 1])
    register_problem_size("yolo13", [512, 34, 34, 1, 256, 1]) #it will do yolo12 again 
    register_problem_size("yolo18", [512, 17, 17, 3, 1024, 1])
    register_problem_size("yolo19", [1024, 17, 17, 1, 512, 1])


    register_problem_size("res1*", [3, 112, 112, 7, 64, 2])
    register_problem_size("res2", [64, 56, 56, 3, 64, 1])
    register_problem_size("res3", [64, 56, 56, 1, 64, 1]) 
    register_problem_size("res4*", [64, 28, 28, 3, 128, 2])
    register_problem_size("res5*", [64, 28, 28, 1, 128, 2]) # this one downsampling
    register_problem_size("res6", [128, 28, 28, 3, 128, 1])
    register_problem_size("res7*", [128, 14, 14, 3, 256, 2])
    register_problem_size("res8*", [128, 14, 14, 1, 256, 2]) # this one downsampling this one need rerun(wrong stride before)!!
    register_problem_size("res9", [256, 14, 14, 3, 256, 1])
    register_problem_size("res10*", [256, 7, 7, 3, 512, 2])
    register_problem_size("res11*", [256, 7, 7, 1, 512, 2])
    register_problem_size("res12", [512, 7, 7, 3, 512, 1])

    register_problem_size("defo1", [3, 108, 108, 3, 32, 1])
    register_problem_size("defo2", [32, 108, 108, 3, 32, 1])
    register_problem_size("defo3", [32, 54, 54, 3, 64, 1])
    register_problem_size("defo4", [64, 54, 54, 3, 64, 1])
    register_problem_size("defo5", [64, 27, 27, 3, 128, 1]) # this one downsampling
    register_problem_size("defo6", [128, 27, 27, 3, 128, 1])
    
    rs_half_dir_path = os.getcwd()+"/dir_rs3_half_dataset"
    s_half_dir_path = os.getcwd()+"/dir_s3_half_dataset"
    rs1_dir_path = os.getcwd()+"/dir_rs1_dataset"
    gemm_dir_path = os.getcwd()+"/dir_gemm_dataset"
    rs3_oddshape_dir_path = os.getcwd()+"/dir_rs3odd_dataset"
    rs1_oddshape_dir_path = os.getcwd()+"/dir_rs1odd_dataset"
    st2_dir_path = os.getcwd()+"/dir_st2_dataset"


    # here are 2 pairs of half half
    lenA = len(os.listdir(rs_half_dir_path))
    lenB = len(os.listdir(s_half_dir_path))
    assert lenA==lenB, "half half must have same number of files"

    lenA = len(os.listdir(gemm_dir_path))
    lenB = len(os.listdir(rs1_dir_path))
    assert lenA==lenB, "half half must have same number of files"
    
    
    
    rank_rs3_oddshape_summary = RANK_RS(rs3_oddshape_dir_path, machine_info, topN, step, initN) # yolo18 17x17 res12 7x7
    rank_rs1_oddshape_summary = RANK_RS(rs1_oddshape_dir_path, machine_info, topN, step, initN) # yolo19 17x17
    rank_rsstride2_summary = RANK_st2(st2_dir_path, machine_info, topN, step, initN)
    # half half for 1x1 stride 1 (RS-gemm)
    #rank_gemm_summary = RANK_gemm(gemm_dir_path, machine_info, topN, step, initN) # later do half half
    #rank_rs1_summary = RANK_RS(rs1_dir_path, machine_info, topN//2, step//2, initN//2)
    # half half for 3x3 stride 1 (RS-S)
    rank_rs_summary = RANK_RS(rs_half_dir_path, machine_info, topN//2, step//2, initN//2)
    rank_s_summary = RANK_S(s_half_dir_path, machine_info, topN//2, step//2, initN//2)

    rank_res_list = [
        #pure_dv_half_half(topN, step, initN, rank_gemm_summary, rank_rs1_summary, "rank_1x1 halfhalf"),
        pure_dv_half_half(topN, step, initN, rank_s_summary, rank_rs_summary, "rank_3x3 halfhalf", stride=1),
        #(topN, step, initN, rank_gemm_summary, "rank_1x1 non-half", stride=1),
        special_non_half_pure_dv(topN, step, initN, rank_rsstride2_summary, "rank_stride2 non-half", stride=2),
        special_non_half_pure_dv(topN, step, initN, rank_rs3_oddshape_summary, "rank_rs3_odd non-half", stride=1),
        special_non_half_pure_dv(topN, step, initN, rank_rs1_oddshape_summary, "rank_rs1_odd non-half", stride=1),
    ]


######################################################################################
    import joblib
    train_set_file_rs = "train_set_c_rskernel.csv"
    rs_indepent_test_set_file = "test_set_rskernel.csv"

    train_set_file_s = "train_set_3_skernel.csv"
    s_indepent_test_set_file = "test_set_3_skernel.csv"

    train_set_file_gemm = "train_set_gemmkernel.csv"
    gemm_indepent_test_set_file = "test_set_gemmkernel.csv"
    
    train_set_file_st2 = "train_set_c_rskernel_stride2.csv"
    st2_indepent_test_set_file = "test_set_c_rskernel_stride2.csv"
    
    ################################################
    # train_set_file_rs = "test_set_rskernel.csv"
    # rs_indepent_test_set_file = "test_set_rskernel.csv"

    # train_set_file_s = "train_set_3_skernel_test.csv"
    # s_indepent_test_set_file = "train_set_3_skernel_test.csv"

    # train_set_file_gemm = "train_set_gemmkernel_test.csv"
    # gemm_indepent_test_set_file = "train_set_gemmkernel_test.csv"
    
    # train_set_file_st2 = "train_set_c_rskernel_stride2_test.csv"
    # st2_indepent_test_set_file = "train_set_c_rskernel_stride2_test.csv"
    ##format summary[filename][alt].append((trial_name, truth_topN_list, predict_topN_real_time_list))
    
    
    
    algo_list = [ RandomForestRegressor(random_state=19), ]
    algo_name = ["RandomForestRegressor"]
    if no_model == 0:
        print("========= model building ..... ==============", flush=True)
        list_random_state = [17, 43, 137, 269, 811]

        RS_all_model_dict = RS3_buildML(rs_half_dir_path, machine_info,  topN, step, initN, train_set_file_rs,rs_indepent_test_set_file, 0.1, list_random_state, algo_list, algo_name, "RS")
        St2_all_model_dict = St2_buildML(st2_dir_path, machine_info,  topN, step, initN, train_set_file_st2, st2_indepent_test_set_file, 0.1, list_random_state, algo_list, algo_name, "st2")
        #Gemm_all_model_dict = Gemm_buildML(gemm_dir_path, machine_info,  topN, step, initN, train_set_file_gemm, gemm_indepent_test_set_file, 0.1, list_random_state, algo_list, algo_name, "gemm")
        S3_all_model_dict = S3_buildML(s_half_dir_path, machine_info,  topN, step, initN, train_set_file_s, s_indepent_test_set_file, 0.1, list_random_state, algo_list, algo_name, "S3")

        print("========= DONE model building ..... ==============", flush=True)
        # print(RS_all_model_dict)
        # print(St2_all_model_dict)
        # print(Gemm_all_model_dict)
        # print(S3_all_model_dict)
    else:
        # reconstruct
        alt_list = [1,2]
        RS_all_model_dict = {}
        St2_all_model_dict = {}
        Gemm_all_model_dict = {}
        S3_all_model_dict = {}
        for alt in alt_list:
            model_dict = {}
            for algon in algo_name:
                best_model_name = algon+"_"+"RS"+"_"+str(alt)+".pkl"
                best_model = joblib.load(best_model_name)
                model_dict[algon] = (best_model_name, best_model)       
            RS_all_model_dict[alt] = model_dict    
        
        for alt in alt_list:
            model_dict = {}
            for algon in algo_name:
                best_model_name = algon+"_"+"st2"+"_"+str(alt)+".pkl"
                best_model = joblib.load(best_model_name)
                model_dict[algon] = (best_model_name, best_model)       
            St2_all_model_dict[alt] = model_dict    
        
        for alt in alt_list:
            model_dict = {}
            for algon in algo_name:
                best_model_name = algon+"_"+"S3"+"_"+str(alt)+".pkl"
                best_model = joblib.load(best_model_name)
                model_dict[algon] = (best_model_name, best_model)       
            S3_all_model_dict[alt] = model_dict    

        print("========= Loading model  ..... ==============", flush=True)
        # print(RS_all_model_dict)
        # print(St2_all_model_dict)
        # print(Gemm_all_model_dict)
        # print(S3_all_model_dict)
        



    

    print("========= Predicting ..... ==============")
    import time

    start = time.time()
   
    rs3_oddshape_summary = RS3(rs3_oddshape_dir_path, machine_info, topN, step, initN, RS_all_model_dict, algo_list, algo_name) # yolo18 17x17 res12 7x7 last2 defo
    rsstride2_summary = St2(st2_dir_path, machine_info, topN, step, initN, St2_all_model_dict, algo_list, algo_name)
    # half half for 3x3 stride 1 (RS-S)
    rs_summary = RS3(rs_half_dir_path, machine_info, topN//2, step//2, initN//2, RS_all_model_dict, algo_list, algo_name)
    s_summary = S3(s_half_dir_path, machine_info, topN//2, step//2, initN//2, S3_all_model_dict, algo_list, algo_name)
    # half half for 1x1 stride 1 (RS-gemm)
    #gemm_summary = Gemm(gemm_dir_path, machine_info, topN, step, initN, Gemm_all_model_dict, algo_list, algo_name) # later do half half
    #rs1_summary = RS3(rs1_dir_path, machine_info,topN//2, step//2, initN//2,RS_all_model_dict)
   




    ml_res_list = [
        # ml_hybrid_half_half(topN, step, initN, gemm_summary, rs1_summary, "1x1 halfhalf", stride=1),
        ml_hybrid_half_half(topN, step, initN, rs_summary, s_summary, "3x3 halfhalf", layers_dict, stride=1 ),
        special_non_half_ML_hybrid(topN, step, initN, rsstride2_summary, "stride2 non-half", layers_dict,stride=2, template_name="st2"),
        special_non_half_ML_hybrid(topN, step, initN, rs3_oddshape_summary, "rs3_odd non-half", layers_dict, stride=1, template_name="RS"),
    ]

    end = time.time()
    print("========= Predicting DONE..... ==============", flush=True)
    

    # addtional for loop for ml_res_list
    out_flat_list = []
    for el in ml_res_list:
        for tup in el:
            tup[1] = parse_filename(tup[1], layers_dict, stride=tup[-1])
            out_flat_list.append(tup)
    for el in rank_res_list:
        for tup in el:
            tup[1] = parse_filename(tup[1], layers_dict, stride=tup[-1])
            out_flat_list.append(tup)



    import re
    def Sort(sub_li):
        convert = lambda text: float(text) if text.isdigit() else text
        sub_li.sort(key = lambda key: [convert(c) for c in re.split('([-+]?[0-9]*\.?[0-9]*)', key[1])])
        return sub_li

    print("============== final result :: ============")
    sortres = Sort(out_flat_list)
    RANK=[]
    ML=[]
    HYB=[]
    ext_HYB = []
    for tup in sortres:
        if tup[2] == -1:
            RANK.append(tup)
        if tup[2] == 1:
            ML.append(tup)
        if tup[2] == 2:
            HYB.append(tup)
        if tup[2] == 3:
            ext_HYB.append(tup)

    print("============== Pure ANA :: ============")
    for tup in RANK:
        if tup[0] == 30:
            print(tup)   

    print("============== Pure ML :: ============")
    for tup in ML:
        if tup[0] == 30:
            print(tup)

    print("============== Pure ext_HYB :: ============")
    for tup in HYB:
        if tup[0] == 30:
            print(tup)

    # print("============== Total Prediction time :: ============\n")
    # total_time = end - start
    # nrepeat =  (topN - initN) // step +1
    # num_alt = 3
    # print("T {} N {} per {}".format( total_time, nrepeat, total_time/nrepeat/num_alt) )# Time in seconds



# ##########################################################################################
#     create_fig(ml_res_list, rank_res_list, topN)