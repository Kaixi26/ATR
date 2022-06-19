#!/usr/bin/env python
import json
import sys
import os
import re
import numpy as np
import matplotlib
import matplotlib.pyplot as plt
from matplotlib.ticker import ScalarFormatter
from matplotlib_venn import venn2, venn3
from venn import venn

def str_is_int(str):
    try:
        _ = int(str)
    except ValueError:
        return False
    return True

def avg_elapsed(res):
    res = list(filter(lambda x: str_is_int(x["elapsed"]), res))
    total_elapsed = sum(map(lambda x: int(x["elapsed"]), res))
    return total_elapsed / len(res)

def total_timeout(res):
    return len(list(filter(lambda x: str_is_int(x["elapsed"]) and int(x["elapsed"] > 60000), res)))

cmd = sys.argv.pop(0)
show_graph_plot = False
show_venn = None

if len(sys.argv) == 0:
    print("Usage: " + cmd + " --graph --venn2 --venn3 [FILE]")
    exit(-1)

while re.match("--.*", sys.argv[0]):
    arg = sys.argv.pop(0)
    if arg == "--graph":
        show_graph_plot = True
    elif arg == "--venn":
        show_venn = True


results = {}

for file in sys.argv:
    results[file] = []

    with open(file) as f:
        for line in f:
            ln = json.loads(line)
            results[file].append(ln)

    solved = list(filter(lambda x: x["solved"], results[file]))
    unsolved = list(filter(lambda x: not x["solved"], results[file]))
    solved_perc = "{:.2f}".format(100 * len(solved) / len(results[file]))

    print("For file '" + file + "'")
    print("Total results parsed: " + str(len(results[file])))
    print("Total results solved: " + str(len(solved)) + " (" + solved_perc + "%)")
    print("Total results unsolved: " + str(len(unsolved)))
    print("Total results timedout: " + str(total_timeout(results[file])))
    print("Solved percentage: " + str(len(solved) / len(results[file])))
    print("Avg. elapsed for all: " + str(avg_elapsed(results[file])))
    print("Avg. elapsed for solved: " + str(avg_elapsed(solved)))

    print(str(len(solved)) + " (" + solved_perc + "%)" + " & " + \
        str(total_timeout(results[file])) + " & " + \
          str(len(unsolved)) + " & ")


def plot_graphs():

    def plot_graph(result):
        def perc_below(msecs):
            res = list(filter(lambda x: str_is_int(x["elapsed"]), result))
            below = list(filter(lambda x: int(x["elapsed"]) < msecs, res))
            return len(below) / len(res)

        def solved_perc_below(msecs):
            res = list(filter(lambda x: str_is_int(x["elapsed"]), result))
            below = list(filter(lambda x: x["solved"] and int(x["elapsed"]) < msecs, res))
            return len(below) / len(res)

        x = list(np.arange(0, 0.99, 0.025)) + list(np.arange(1, 65, 0.5))
        y = list(map(lambda v: solved_perc_below(v*1000) * 100, x))

        plt.plot(x, y)
    
    for file in results:
        plot_graph(results[file])

    plt.xscale("log")
    ticks = [0.25, 0.5, 1, 2, 5, 10, 30, 60]
    plt.xticks(ticks, map(lambda x: str(x), ticks))

    matplotlib.rcParams.update({'font.size': 18})
    plt.tick_params(axis='both', which='major', labelsize=18)

    plt.xlabel("time elapsed (s)", fontsize=18)
    plt.ylabel("solved below time (%)", fontsize=18)
    plt.legend(list(results.keys()))

    plt.show()


def plot_venn():
    all = set()
    for file in results:
        for result in results[file]:
            all.add(os.path.basename(result["file"]))
    
    solved = {}
    for file in results:
        solved[file] = set(map(lambda x: os.path.basename(x["file"]), 
                            filter(lambda x: x["elapsed"] < 1000,
                            filter(lambda x: x["solved"], results[file]))))
    

    sets = { }

    for file in solved:
        sets[file] = solved[file]

    venn(sets)
    matplotlib.rcParams.update({'font.size': 18})
    plt.show()


if show_graph_plot:
    plot_graphs()

if show_venn:
    plot_venn()

