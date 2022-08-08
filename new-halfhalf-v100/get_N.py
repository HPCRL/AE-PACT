import os
import sys
import pandas as pd
def get_topN(percent, path):
    for file in os.listdir(path):
        if file.endswith(".csv") and file.startswith("XX_3"):
            filename = os.path.splitext(file)[0]
            layername = filename[5:filename.rfind('_')]
            templatename = filename[filename.rfind('_')+1: ]
            
            df = pd.read_csv(file)
            best_time  = min( df['Time'].to_list()) 
            best_flop = 1 / float( best_time)
            all_time = df['Time'].to_list()

            threshold_time = -1000
            i = 1
            for ti  in all_time:
                if 1/ti >= best_flop * percent:
                    threshold_time = ti
                    break
                i += 1
            
            print("{}, {}, :=best {},  {}, perc at, {}, candid time ,{} ".format(layername,templatename, best_time, percent, i, threshold_time) )


def get_topN_RSS(percent, path):
    layer_resdf_dict = {}

    for file in os.listdir(path):
        if file.endswith(".csv") and file.startswith("XX_3"):
            filename = os.path.splitext(file)[0]
            layername = filename[5:filename.rfind('_')]
            templatename = filename[filename.rfind('_')+1: ]
            
            df = pd.read_csv(file)
            if layername not in layer_resdf_dict.keys():
                df_temp = df.copy(deep=True)
                # normalize predict
                mx = max( df_temp['Predict'].to_list())
                mi = min( df_temp['Predict'].to_list()) 
                df_temp = df_temp[['Time', 'Predict']]
                #df_temp['Predict'] = df_temp['Predict'].map(lambda x: (x-mi)/(mx-mi))
                layer_resdf_dict[layername] = df_temp[['Time', 'Predict']]
            else:
                df_temp = df.copy(deep=True)
                mx = max( df_temp['Predict'].to_list())
                mi = min( df_temp['Predict'].to_list()) 
                df_temp = df_temp[['Time', 'Predict']]
                #df_temp['Predict'] = df_temp['Predict'].map(lambda x: (x-mi)/(mx-mi))
                
                df_merge = pd.concat([layer_resdf_dict[layername], df_temp])
                layer_resdf_dict[layername] = df_merge
                #print(layername, df_merge)
    
    for ly, df in layer_resdf_dict.items():
        df = df.sort_values(by=["Predict"])
        #print(ly, df)
        best_time  = min( df['Time'].to_list()) 
        best_flop = 1 / float( best_time)
        all_time = df['Time'].to_list()
        threshold_time = -1000
        i = 1
        for ti  in all_time:
            if 1/ti >= best_flop * percent:
                threshold_time = ti
                break
            i += 1    
        print("{}, :=best {},  {}, perc at, {}, candid time ,{} ".format(ly, best_time, percent, i, threshold_time) )
           
           
if __name__ == "__main__":
    path = os.getcwd()
    percent = float(sys.argv[1])
    #N_reach_percent = get_topN(percent, path)
    get_topN_RSS(percent, path)
