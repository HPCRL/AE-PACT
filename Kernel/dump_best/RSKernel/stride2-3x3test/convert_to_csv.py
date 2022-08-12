import os
import sys

"""
convert timeFor to test csv files
"""

class Config:
    def __init__(self):
        self.reg = -1
        self.problemsize = []
        self.tile = []
    def reset(self):
        self.reg = -1
        self.problemsize = []
        self.tile = []
    def trans(self):
        assert (len(self.problemsize) == 5)
        assert (len(self.tile) == 7)
        config_str = ""
        config_str += self.problemsize[0] + ", "   #K
        config_str += self.problemsize[1] + ", "   #H
        config_str += self.problemsize[2] + ", "   #W
        config_str += self.problemsize[3] + ", "   #C
        config_str += self.problemsize[4] + ", "   #R
        for i in range(0,len(self.tile)):
            config_str += self.tile[i] + ", "
        #config_str += str(self.reg)
        return config_str

def best_config_record(time_best, config_best):
    f = open("../../../../../time_record_best_config.txt", "a")
    f.write("RSkernel-stride2-3x3test\n")
    f.write("best config is:\n" + str(config_best) + "\n")
    f.write("time record:\n")
    f.write(str(time_best[1:]).strip('[').strip(']') + "\n")
    f.write("\n")
    f.close()

def sort(inFile, filename, num_iter=24):
    all_confgs = {}
    lineNum = 1
    cfg = Config()
    time_best = [0. for _ in range(num_iter+1)]
    time_best[0] = 100.
    config_best = ""
    time_series = []
    for l in open(inFile):
        if l.startswith("warmup"):
            time_series = []
        if "reg" in l:
            regLimt = l[3:].strip()
            cfg.reg = int(regLimt)
        if "|" in l:
            psize = l[0:l.index("|")].strip().split(" ")
            tl = l[l.index("|")+1:].strip().split(" ")
            cfg.problemsize = psize
            cfg.tile = tl
        if "time" in l:
            time_series.append(float(l[5:].strip()))
        if ">>> ERROR : " in l:
            num_of_error = l[l.index(":")+1:l.index("among")].strip()
            if int(num_of_error) == 0:
                time_series.sort()
                length = len(time_series)
                time_median = time_series[(length-1)//2] if length % 2 == 1 else (time_series[length // 2] + time_series[length // 2 - 1]) / 2.
                config_detail = cfg.trans()
                all_confgs[config_detail] = str(time_median)
                if time_best[0] > time_median:
                    time_best[0] = time_median
                    time_best[1:] = time_series[:]
                    config_best = config_detail
                cfg.reset()
            else:
                cfg.reset()
    print(all_confgs)
    all_confgs = dict(sorted(all_confgs.items(), key=lambda item: item[1]))

    sortfile = open("Reg."+filename+".csv", "w")
    sortfile.write("K, H, W, C, R, TK, TH, TW, BK, BH, BW, CMult, Time \n")

    for key, value in all_confgs.items():
        sortfile.write('%s %s\n' % (key, value))
    sortfile.close()
    if config_best != "":
        params = ['K', 'H', 'W', 'C', 'R', 'TK', 'TH', 'TW', 'BK', 'BH', 'BW', 'CMult']
        config_temp = config_best.split(", ")
        config_pair = dict()
        for i in range(len(params)):
            config_pair[params[i]] = config_temp[i].strip(',')
        best_config_record(time_best, config_pair)


def select(path):
    for file in os.listdir(path):
        if file.endswith(".txt") and file.startswith("timesFor"):
            filename = os.path.splitext(file)[0]
            print("handling ", filename)
            sort(file, filename)

if __name__ == '__main__':
    #path = sys.argv[1]
    path = os.getcwd()
    select(path)
