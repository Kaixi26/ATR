#!/usr/bin/env python
import json
import sys
import os

beafix = {}
atr = {}

if len(sys.argv) == 3:
    with open(sys.argv[1]) as f:
        for line in f:
            ln = json.loads(line)
            atr[os.path.basename(ln["file"])] = ln

    with open(sys.argv[2]) as f:
        for line in f:
            ln = json.loads(line)
            beafix[os.path.basename(ln["file"])] = ln

keys = set()
for key in beafix:
    keys.add(key)
for key in atr:
    keys.add(key)

for key in keys:
    result = {}
    result["atr"] = atr.get(key, {})
    result["beafix"] = beafix.get(key, {})
    print(json.dumps(result))
