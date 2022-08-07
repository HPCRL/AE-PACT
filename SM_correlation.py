import matplotlib
from regress import regress
import sys
import numpy as np

class CBlock:
    def __init__(self, name, duration_r, smwv,
                 aduration_r,asmwv):
        self.nm = name
        self.dr = duration_r

        self.adr = aduration_r

        self.smwv = smwv
        self.asmwv = asmwv


def dipict_correlation(block_list, label, machine_name):
    if label == "SMWV":
        smwv_v_list = []
        duration_v_list = []
        asmwv_v_list = []
        aduration_v_list = []
        for b in block_list:
            smwv_v_list.append(float(b.smwv))
            duration_v_list.append(float(b.dr)*1000)
            asmwv_v_list.append(float(b.asmwv))
            aduration_v_list.append(float(b.adr)*1000)

        regress(smwv_v_list, duration_v_list, label+"ansor", machine_name)
        regress(asmwv_v_list, aduration_v_list, label+"cnnopt", machine_name)



def get_num(line):
    mark = line.index(">")
    num_file = int(line[mark+2: mark+4])
    return num_file

def process_out(path):
    block_list = []
    dr_list = []
    ansor_smwv = []
    RS_smwv = []

    num_files = -1
    first_block = True
    with open(path) as fp:
        Lines = fp.readlines()
        for line in Lines:
            if "," not in line :
                if first_block:
                    first_block = False
                    name = line[:-1]
                else:
                   
                    bb = CBlock(name + "::RS", dr_list[0], 
                                ansor_smwv[0], 
                                dr_list[1],  RS_smwv[0])
                    block_list.append(bb)

                    # cleanup
                    dr_list.clear()
                    ansor_smwv.clear()
                    RS_smwv.clear()

                    name = line[:-1]
                    num_files = -1
            elif "ERROR" in line:
                continue
            elif "Duration" in line:
                v_array = line.split(",")
                dr_list.append(v_array[1])
                dr_list.append(v_array[2][:-1])
            elif "wavefront" in line:
                # handle corner case
                v_array = line.split(",")
                ansor_smwv.append(float(v_array[1]))
                RS_smwv.append(float(v_array[2]))



    bb = CBlock(name + "::RS", dr_list[0], 
                                ansor_smwv[0], 
                                dr_list[1],  RS_smwv[0])
    block_list.append(bb)

    print("# of blocks", len(block_list))
   
    return block_list



if __name__ == '__main__':
    # ansor_file = input("Enter ansor profile: ")
    # rs_file = input("Enter RS profile: ")
    # s_file = input("Enter S profile: ")
    block_list = process_out("sm-v100.log")
    block_list1 = process_out("sm-2080.log")
    #label = sys.argv[1]
    dipict_correlation(block_list, "SMWV", "v100")
    dipict_correlation(block_list1, "SMWV", "2080")





