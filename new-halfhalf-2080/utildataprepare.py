import os
import random
import pandas as pd

def group_df(largedf, new_header_list):
    list_df = []
    row_list = []

    largedf = largedf.reset_index()  # make sure indexes pair with number of rows
    problem_size = []
    num_vali_ps = 0

    for index, row in largedf.iterrows():
        list_veiw = row.values.tolist()[1:]
        if len(list_veiw) != len(new_header_list):
            print("list_veiw", list_veiw)
        if len(problem_size) == 0:
            # first time
            problem_size.extend(list_veiw[0:5]) 
        
        if problem_size != list_veiw[0:5]:
            # new group of ps
            new_setdf = pd.DataFrame(columns=new_header_list, data=row_list)
            list_df.append(new_setdf)
            row_list.clear()
            num_vali_ps += 1

            problem_size = list_veiw[0:5] # update to a new ps
            row_list.append(list_veiw)
        else:
            row_list.append(list_veiw)
    
    # last buffer new group of ps
    new_setdf = pd.DataFrame(columns=new_header_list, data=row_list)
    list_df.append(new_setdf)
    row_list.clear()
    num_vali_ps += 1

    
    #print("num_vali_ps", num_vali_ps)
    assert len(list_df) == num_vali_ps
    return list_df


def prepare_indp_test_set(test_expand_df):
    new_header_list = list(test_expand_df)
    list_test_df = group_df(test_expand_df, new_header_list)
    return list_test_df



def prepare_validate_set(train_expand_df, ratio, shift):
    samples = train_expand_df.shape[0]

    test_start = int(samples*ratio)*shift
    test_end = int(samples*ratio)*(shift+1)
    if shift == 0:
        train_df = train_expand_df[test_end:]
        valid_df = train_expand_df[test_start:test_end]
        new_header_list = list(train_expand_df)
        # print("shift {} ts {} te {}".format(shift, test_start, test_end))
        # print("train samples: ", train_df.shape[0])
        # print("vaili samples: ", valid_df.shape[0])

        list_vali_df = group_df(valid_df, new_header_list)
    elif shift == 9:
        train_df = train_expand_df[0:test_start]
        valid_df = train_expand_df[test_start:]
        # print("shift {} ts {} te {}".format(shift, test_start, test_end))
        # print("train samples: ", train_df.shape[0])
        # print("vaili samples: ", valid_df.shape[0])

        new_header_list = list(train_expand_df)
        list_vali_df = group_df(valid_df, new_header_list)
    else:
        train_df = pd.concat([train_expand_df[0:test_start], train_expand_df[test_end:] ])
        valid_df = train_expand_df[test_start:test_end]
        # print("shift {} ts {} te {}".format(shift, test_start, test_end))
        # print("train samples: ", train_df.shape[0])
        # print("vaili samples: ", valid_df.shape[0])

        new_header_list = list(train_expand_df)
        list_vali_df = group_df(valid_df, new_header_list)


    # print("[debug print] prepare_validate_set")
    # print("rows : ", samples)
    # print("new_header_list ", new_header_list)
    # i = 0
    # for el in list_vali_df:
    #     print(i, el.shape[0])
    #     i+=1



    return train_df, list_vali_df

if __name__ == '__main__':
    group_df(largedf, new_header_list)