import pandas as pd
import sys
import os

Selected_RULES = [
"Duration"
]

def match_rule(arr):
    for i in range(0, len(arr)):
        m_value = arr[i]
        if m_value in Selected_RULES:
            #print(arr[i], "--->", arr[i+4])
            if "," in arr[i+4]:
                out = arr[i+4].replace(',', '')
            else:
                out = arr[i+4]
            if m_value == "Duration":
                m_value = m_value+"(ns)"
            return m_value, out
    return "",""


def get_res(path):
    count = 0
    out_map = {}
    with open(path) as fp:
        Lines = fp.readlines()
        for line in Lines:
            count += 1
            value_array = line.split("\"")
            #print(value_array)
            k, v = match_rule(value_array)
            if k != "" and k not in out_map.keys():
                out_map[k] = v

    # print(out_map)
    return out_map

def print_res(res_table, num_tables):
    print_header = True
    for k, v in sorted(res_table[0].items()):
        if num_tables == 2:
            if print_header:
                print("MM, Ansor-abs, CNNOpt-abs")
                print_header = False
            base = v
            p1 = res_table[1][k]

            if float(base) == 0:
                base = 1
            print("{}, {}, {}".format(k, float(base), float(p1)))
        else:
            if print_header:
                print("MM, Ansor-abs, CNNOpt-abs")
                print_header = False
            base = v
            p1 = res_table[1][k]
            p2 = res_table[2][k]

            p = min(float(p1), float(p2) )


            if float(base) == 0:
                base = 1
            if float(p2) == 0:
                p2 = 1
            print("{}, {}, {}".format(k, float(base), p))

def tabulate(file_list, num_files):
    assert len(file_list) == num_files
    filename = os.path.splitext(file_list[0])[0]
    #print("\==> {} file comparison, NAME {} ".format(num_files, filename))
    res_table = []
    if num_files == 2:
        baseline = get_res(file_list[0])
        p1 = get_res(file_list[1])
        res_table.append(baseline)
        res_table.append(p1)
        print_res(res_table, 2)
    else:
        baseline = get_res(file_list[0])
        p1 = get_res(file_list[1])
        p2 = get_res(file_list[2])
        res_table.append(baseline)
        res_table.append(p1)
        res_table.append(p2)
        print_res(res_table, 3)


    return

if __name__ == '__main__':
    # ansor_file = input("Enter ansor profile: ")
    # rs_file = input("Enter RS profile: ")
    # s_file = input("Enter S profile: ")
    # ansor_file = "ansor_profile/ayolo0.csv"
    # rs_file ="executable-2080/profile-res/yolo0.csv"
    # s_file ="executable-2080/profile-res/Syolo0.csv"
    # file_list = [ansor_file, rs_file, s_file]

    file_list = []

    for arg in sys.argv[1:]:
        file_list.append(arg)

    num_files = len(file_list)
    tabulate(file_list, num_files)


