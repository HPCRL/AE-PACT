import os
import random
import pandas as pd

def intersection(lst1, lst2):
    from collections import Counter
    c = list((Counter(lst1) & Counter(lst2)).elements())
    return c

def table_view(summary_table, summary_file):
    print("!!!writing results to ", summary_file)
    is_first_line = True
    header = "\ntest_file_name, "
    for key, val in summary_table.items():
        if is_first_line:
            line = key + ", "
            for i in val:
                header += i[0] + ","
                line += str(i[1]) + ","
            is_first_line = False
            # print(header + "\n")
            # print(line + "\n")
            summary_file.write(header)
            summary_file.write("\n")
            summary_file.write(line)
            summary_file.write("\n")
        else:
            line = key + ", "
            for i in val:
                line += str(i[1]) + ","
            # print(line + "\n")
            summary_file.write(line)
            summary_file.write("\n")

        summary_file.write("\n")
        summary_file.write("\n")
        summary_file.flush()



def random_order_csv(file, dirpath):
    filename = os.path.splitext(file)[0]
    print("-------------------------shuffling ", filename)
   
    header = ""
    row_list = []
    ss = 0
    Error_flag = False
    for l in open(os.path.join(dirpath, file)):
        if Error_flag:
            Error_flag = False      # Skip nextline()
            continue
        if ss == 0:  # skip header
            ss += 1
            header = l
            continue
        if "," not in l or "Error" in l:    # skip error
            Error_flag = True
            continue
        
        data_line = l.split(",")
        data_line_list = [item.strip() for item in data_line]
        row_list.append(data_line_list)
        
    # collect all row, and shuffle
    random.shuffle(row_list)
    new_header_list = header.split(",")
    new_header_list = [item.strip() for item in new_header_list]
    df = pd.DataFrame(columns=new_header_list, data=row_list)
    df.to_csv(os.path.join(dirpath, file), index=False)


def preapre_line_data(summary_table, x_label, data_table, algo_set):
    # x_label = []  # test file name
    # data_table = {}
    # algo_set = set()
    is_first_line = True
    for key, val in summary_table.items():
        # print("Key", key)
        # print("val", val)
        if is_first_line:
            for i in val:
                if i[0] not in data_table.keys():
                    data_table[i[0]] = []
                data_table[i[0]].append(i[1]) # i[1] best LOP, i[2] avg_lop
                #data_table[i[0]].append(i[2])           
                algo_name = i[0]
                algo_name = algo_name[0: algo_name.index('_')]
                algo_set.add(algo_name)
            is_first_line = False
            ps = key[16:]
            x_label.add(ps)
        else:
            ps = key[16:]
            x_label.add(ps)
            # algo_name = key[0: key.index('_')]
            # algo_set.add(algo_name)
            for i in val:
                if i[0] not in data_table.keys():
                    data_table[i[0]] = []
                data_table[i[0]].append(i[1])
                #data_table[i[0]].append(i[2]) 

    return x_label, data_table, algo_set


if __name__ == '__main__':
    table_view(summary_table, summary_file)