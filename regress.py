import matplotlib.pyplot as plt
import numpy as np

rng = np.random.default_rng(1234)

def regress(y, x, label, machine_name):
    # Initialize layout
    fig, ax = plt.subplots(figsize=(5, 5))
    corr = np.corrcoef(x, y)
    # print(label)
    # print("{:.3f}".format(corr[0,1]))

    # Add scatterplot
    plt.plot(x, y, 'o')

    # Fit linear regression via least squares with numpy.polyfit
    # It returns an slope (b) and intercept (a)
    # deg=1 means linear fit (i.e. polynomial of degree 1)
    b, a = np.polyfit(x, y, deg=1)

    # Create sequence
    xseq = np.linspace(0, max(x)+1)
    # Plot regression line
    ax.plot(xseq, a + b * xseq, color="red", lw=2.5)
    # place a text box in upper left in axes coords
    ax.set_xlabel('Execution time(us)', size=15)

    text_str = ""
    if 'SMWV' in label :
        ax.set_ylabel('# Shared Memory Transactions', size=15)


    props = dict(boxstyle='round', facecolor='white', alpha=0.5)
    ax.text(0.03, 0.95, text_str, transform=ax.transAxes, fontsize=15,
             verticalalignment='top', bbox=props)

    ax.text(0.03, 0.88,  "Pearson's r: " + "{:.3f}".format(corr[0,1]), transform=ax.transAxes, fontsize=15,
             verticalalignment='top', bbox=props)
    plt.ticklabel_format(style='sci')
    from matplotlib.ticker import ScalarFormatter
    class MyScalarFormatter(ScalarFormatter):
        # Override '_set_format' with your own
        def _set_format(self):
            self.format = '%.1f'  # Show 2 decimals
    custom_formatter = MyScalarFormatter(useMathText=True)
    ax.yaxis.set_major_formatter(custom_formatter)
    # ax.yaxis.major.formatter.set_powerlimits((2, 2))
    # axs[1,2].yaxis.major.formatter.set_scientific(True)  # Redundant: True is default

    # plt.axvline(x=1, color='gray', linestyle='-',linewidth='2.5')
    #plt.show()
    fig.savefig(machine_name+ label+'.pdf')
    plt.close(fig)


if __name__ == '__main__':
    regress()