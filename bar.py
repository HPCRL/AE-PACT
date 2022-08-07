import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import matplotlib.patches
from matplotlib.legend_handler import HandlerTuple
import math

def drawline(cudnn_data,ansor_data, cnnopt_data, anstp,lname, figname):
    # relative speedup
    m1_t = pd.DataFrame({

        'cuDNN_max': cudnn_data,
        'ansor': ansor_data,
        'our': cnnopt_data,
    })

    abs = pd.DataFrame({
        'abs-ansor': anstp,
    })

   


    fig, ax1 = plt.subplots()
    fig.set_figwidth(18)
    ax1.spines["top"].set_visible(True)
    ax1.spines["right"].set_visible(True)
    ax1.spines["bottom"].set_visible(True)
    ax1.spines["left"].set_visible(True)
    x_label = lname
    x = np.arange(len(x_label))

    hatch_dict = {0: '', 1: '////', 2: 'xx', 3: '++', 4: '.'}
    labels = [' CNNOpt', 'cuDNN', 'Ansor']
    colors = ['red', 'greenyellow', 'orange', 'dodgerblue', 'lightgreen']
    width = 0.25
    rects1 = ax1.bar(x - width, m1_t['our'], width, label=labels[0], hatch=hatch_dict[0], alpha=.99,
                     color=colors[0])
    rects2 = ax1.bar(x, m1_t['cuDNN_max'], width, label=labels[1], hatch=hatch_dict[1], alpha=.99,
                     color=colors[1])
    rects4 = ax1.bar(x + width, m1_t['ansor'], width, label=labels[2], hatch=hatch_dict[2], alpha=.99,
                     color=colors[2])


    ax1.tick_params(axis='y', labelsize=20)
    maxy = math.ceil(max(cnnopt_data))
    ax1.set_ylim(0, maxy)
    plt.xticks(x + width / 4, x_label)

    plt.tick_params(axis='x', which='major', labelsize=20)
    plt.xticks(rotation=0)


    ax1.yaxis.grid(linestyle='--', linewidth='0.5')
    ax1.set_ylabel('Speedup (relative to Ansor)', size=20)
  
    def autolabel(rects, vals):
        """Attach a text label above each bar in *rects*, displaying its height."""
        i = 0
        for rect in rects:
            height = rect.get_height()
            val = vals[i]
            i = i + 1
            ax1.annotate('{:4.2f}'.format(val),
                            xy=(rect.get_x() + 0.1, height),
                            xytext=(0, 20),  # 3 points vertical offset
                            textcoords="offset points",
                            ha='right', va='center', size=13, fontweight='bold', rotation=-90)

    abs = abs / 1000
    autolabel(rects4, abs['abs-ansor'])
   

    leg_artists = []
    for i in range(len(hatch_dict)):
        p = matplotlib.patches.Patch(facecolor=colors[i], hatch=hatch_dict[i], alpha=.99)
        leg_artists.append((p))

    ax1.legend(leg_artists, labels, loc='upper center', bbox_to_anchor=(0.5, 1.2), ncol=5,
               handler_map={tuple: HandlerTuple(ndivide=None)}, fontsize=18)

   
    fig.set_figheight(5)
    fig.set_figwidth(15)
    fig.tight_layout()

    plt.show()

    fig.savefig(figname+'.pdf')


if __name__ == "__main__":
    drawline()