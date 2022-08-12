import os
import sys

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
        assert (len(self.tile) == 9)
        config_str = ""
        config_str += self.problemsize[0] + " "   #K
        config_str += self.problemsize[1] + " "   #H
        config_str += self.problemsize[2] + " "   #W
        config_str += self.problemsize[3] + " "   #C
        config_str += self.problemsize[4] + " "   #R
        config_str += self.problemsize[4] + " "   #S
        for i in range(0,9):
            config_str += self.tile[i] + " "
        config_str += str(self.reg)
        return config_str


def sort(inFile, filename):
    all_confgs = {}
    lineNum = 1
    cfg = Config()
    for l in open(inFile):
        if "reg" in l:
            regLimt = l[3:].strip()
            cfg.reg = int(regLimt)
        if "|" in l:
            psize = l[0:l.index("|")].strip().split(" ")
            tl = l[l.index("|")+1:].strip().split(" ")
            cfg.problemsize = psize
            cfg.tile = tl
        if "time" in l:
            time = l[5:].strip()
        if ">>> ERROR : " in l:
            num_of_error = l[l.index(":")+1:l.index("among")].strip()
            if int(num_of_error) == 0:
                all_confgs[cfg.trans()] = time
                cfg.reset()
            else:
                cfg.reset()
    print(all_confgs)
    all_confgs = dict(sorted(all_confgs.items(), key=lambda item: item[1]))
    sortfile = open("Sorted."+filename+".txt", "w")
    for key, value in all_confgs.items():
        sortfile.write('%s - %s\n' % (key, value))


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
