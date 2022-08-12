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


def pure_dv_half_half(topN, step, initN, rank_rs_summary, rank_s_summary, note, stride):
    """
    step is gap between topN
    """
    rank_summary_list = []
    for tp in range(initN, topN+1, step):
        half_tp = tp // 2
        rank_rs_summary_in_tp = rank_rs_summary[half_tp]
        rank_s_summary_in_tp = rank_s_summary[half_tp]
        for file in rank_rs_summary_in_tp:
            dict_s = rank_rs_summary_in_tp[file]
            dict_rs = rank_s_summary_in_tp[file]
            rs_info = (dict_s[1])[0]
            s_info = (dict_rs[1])[0]
            best_of_both_ground_truth = min( min(rs_info[1]), min(s_info[1]))
            combine_predict_list = rs_info[2].values.tolist()
            combine_predict_list.extend(s_info[2].values.tolist())
            assert len(combine_predict_list) <= tp
            abs_lop = min(combine_predict_list) - best_of_both_ground_truth
            LOP = abs_lop / best_of_both_ground_truth

            rank_summary_list.append([tp, file, -1, LOP, min(combine_predict_list), best_of_both_ground_truth, stride])
    
    #print(note, rank_summary_list)
    return rank_summary_list

def special_non_half_pure_dv(topN, step, initN, summary, note, stride):
    rank_summary_list = []
    for tp in range(initN, topN+1, step):
        summary_in_tp = summary[tp]
        for file in summary_in_tp:
            dict_s = summary_in_tp[file]
            info = (dict_s[1])[0]
            best_of_ground_truth = min(info[1])
            predict_list = info[2].values.tolist()
            assert len(predict_list) <= tp, "length should be same as topN, pure DV"
            abs_lop = min(predict_list) - best_of_ground_truth
            LOP = abs_lop / best_of_ground_truth

            rank_summary_list.append([tp, file, -1, LOP, min(predict_list), best_of_ground_truth, stride])
    
    #print(note, rank_summary_list)
    return rank_summary_list

def ml_hybrid_half_half(topN, step, initN, rs_summary, s_summery, note, layers_dict, stride):
    summary_list = []
    for tp in range(initN, topN+1, step):
        half_tp = tp // 2
        rs_summary_in_tp = rs_summary[half_tp]
        s_summary_in_tp = s_summery[half_tp]
        
        for file in s_summary_in_tp:
            alt_algo_dict_s = s_summary_in_tp[file]
            alt_algo_dict_rs = rs_summary_in_tp[file]
            for alt in [1,2]:
                for i in range(0, len(alt_algo_dict_s[alt]) ):
                    rs_info = (alt_algo_dict_rs[alt])[i]
                    s_info = (alt_algo_dict_s[alt])[i]
                    # only process rf
                    if "RandomForestRegressor" in rs_info[0] and "RandomForestRegressor" in s_info[0]:
                        best_of_both_ground_truth = min( min(rs_info[1]), min(s_info[1]))
                        combine_predict_list = rs_info[2].values.tolist()
                        combine_predict_list.extend(s_info[2].values.tolist())
                        # print("rs_ground_truth_list", rs_info[1])
                        # print("s_ground_truth_list", s_info[1])
                        # print("rs_predict_list", rs_info[2])
                        # print("s_predict_list", s_info[2])
                        # print(combine_predict_list, min(combine_predict_list), best_of_both_ground_truth)
                        #print("***********************")
                        assert len(combine_predict_list) <= tp, "half half combined candidate length should be same as topN"
                        abs_lop = min(combine_predict_list) - best_of_both_ground_truth
                        LOP = abs_lop / best_of_both_ground_truth

                        LayerName = parse_filename(file, layers_dict, stride)
                        df_sort_by_predict_RS = rs_info[-1]
                        df_sort_by_predict_S = s_info[-1]
                        df_sort_by_predict_RS.to_csv("XX_"+str(alt)+"_"+LayerName+"_RS.csv")
                        df_sort_by_predict_S.to_csv("XX_"+str(alt)+"_"+LayerName+"_S.csv")

                        summary_list.append([tp, file, alt, LOP, min(combine_predict_list), best_of_both_ground_truth, stride])
    #print(note, summary_list)
    return summary_list


def special_non_half_ML_hybrid(topN, step, initN, summary, note, layers_dict, stride, template_name):
    summary_list = []
    for tp in range(initN, topN+1, step):
        summary_in_tp = summary[tp]
        for file in summary_in_tp:
            alt_algo_dict = summary_in_tp[file]
            for alt in [1,2]:
                for i in range(0, len(alt_algo_dict[alt]) ):
                    info = (alt_algo_dict[alt])[i]
                    if "RandomForestRegressor" in info[0]:
                        best_of_ground_truth = min(info[1])
                        predict_list = info[2].values.tolist()
                        assert len(predict_list) <= tp, "length should be same as topN"
                        abs_lop = min(predict_list) - best_of_ground_truth
                        LOP = abs_lop / best_of_ground_truth

                        LayerName = parse_filename(file, layers_dict, stride)
                        df_sort_by_predict = info[-1]
                        df_sort_by_predict.to_csv("XX_"+str(alt)+"_"+LayerName+"_"+ template_name+ ".csv")
                        

                        summary_list.append([tp, file, alt, LOP, min(predict_list), best_of_ground_truth, stride])
    #print(note, summary_list)
    return summary_list


