#!/usr/bin/env python3
import sys
import re

program = sys.argv.pop(0)

if len(sys.argv) < 3:
    print("Usage: " + program + " [FILE] [TARGET] [SOLUTION] [FACT]?")
    print("\t" + program + " model.als inv4 inv4_OK inv4")
    exit(0)

fname = sys.argv.pop(0)
target = sys.argv.pop(0)
solution = sys.argv.pop(0)
fact = None

if len(sys.argv) > 0:
    fact = sys.argv.pop(0)

def remove_comments(model):
    return re.sub("\n\n\n+", "\n", re.sub(r"--.*", "", model))

def solution_segment(model, solution):
    start = re.search(r"pred\s+" + solution + "\s*{", model).end() - 1

    end = start + 1
    depth = 1
    while depth > 0:
        if model[end] == "{":
            depth += 1
        elif model[end] == "}":
            depth -= 1
        end += 1

    return model[start:end]

model = None
with open(fname, "r") as f:
    model = f.read()

model = re.sub("#m#\(\)", "", model)
model = remove_comments(model)

if fact:
    model += "\npred _repair {\n\t" + target + "\n}\n"
else:
    model += "\npred __repair {\n\t" + target + "\n}\n"

model += "\nassert __repair {\n\t" + target + " <=> " + solution_segment(model, solution) + "\n}\n"
model += "\ncheck __repair\n"

if fact:
    model += "\nfact ___repair {\n\t" + fact + "\n}\n"

print(model)