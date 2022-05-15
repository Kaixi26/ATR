#!/usr/bin/env python
import json
import sys
import os

results = []
solved = []
unsolved = []

if len(sys.argv) != 2:
    print("Usage: " + sys.argv[0] + " [FILE]")
    exit(-1)

with open(sys.argv[1]) as f:
    for line in f:
        ln = json.loads(line)
        results.append(ln)

def avg_elapsed(data):
    sums = 0
    total = 0
    for d in data:
        try:
            sums += d["elapsed"]
            total += 1
        except Exception:
            pass

    return sums / total

solved = list(filter(lambda x: x["solved"], results))
unsolved = list(filter(lambda x: not x["solved"], results))

print("For file '" + sys.argv[1] + "'")
print("Total results parsed: " + str(len(results)))
print("Total results solved: " + str(len(solved)))
print("Total results unsolved: " + str(len(unsolved)))
print("Solved percentage: " + str(len(solved) / len(results)))
print("Avg. elapsed for all: " + str(avg_elapsed(results)))
print("Avg. elapsed for solved: " + str(avg_elapsed(solved)))