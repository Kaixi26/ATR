#!/usr/bin/env python
import json
import sys
import os
import re
import numpy as np
import matplotlib
import matplotlib.pyplot as plt
from matplotlib_venn import venn2, venn3

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

if sys.argv == 0:
    print("Usage: " + sys.argv[0] + " --graph --venn2 --venn3 [FILE]")
    exit(-1)

while re.match("--.*", sys.argv[0]):
    arg = sys.argv.pop(0)
    if arg == "--graph":
        show_graph_plot = True
    elif arg == "--venn2":
        show_venn = 2
    elif arg == "--venn3":
        show_venn = 3


results = {}

for file in sys.argv:
    results[file] = []

    with open(file) as f:
        for line in f:
            ln = json.loads(line)
            results[file].append(ln)

    solved = list(filter(lambda x: x["solved"], results[file]))
    unsolved = list(filter(lambda x: not x["solved"], results[file]))

    print("For file '" + file + "'")
    print("Total results parsed: " + str(len(results[file])))
    print("Total results solved: " + str(len(solved)))
    print("Total results unsolved: " + str(len(unsolved)))
    print("Total results timedout: " + str(total_timeout(results[file])))
    print("Solved percentage: " + str(len(solved) / len(results[file])))
    print("Avg. elapsed for all: " + str(avg_elapsed(results[file])))
    print("Avg. elapsed for solved: " + str(avg_elapsed(solved)))


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

        x = list(np.arange(0, 0.99, 0.025)) + list(np.arange(1, 65, 1))
        y = list(map(lambda v: solved_perc_below(v*1000) * 100, x))

        plt.plot(x, y)
        plt.xscale("log")
    
    for file in results:
        plot_graph(results[file])

    plt.xlabel("time elapsed (s)")
    plt.ylabel("solved below time (%)")
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
                            filter(lambda x: x["elapsed"] < 1000000,
                            filter(lambda x: x["solved"], results[file]))))
    

    sets = [ ]
    names = [ ]

    for file in solved:
        sets.append(solved[file])
        names.append(file)
    if show_venn == 2:
        venn2(sets, names)
    else:
        sets.insert(0, all)
        names.insert(0, "all")
        venn3(sets, names)

    plt.show()

if show_graph_plot:
    plot_graphs()

if show_venn:
    plot_venn()

#set1 = set(['A', 'B', 'C'])
#set2 = set(['A', 'B'])
#set3 = set(['B', 'C'])
#venn3([set1, set2, set3], ('Set1', 'Set2', 'Set3'))
#plt.show()