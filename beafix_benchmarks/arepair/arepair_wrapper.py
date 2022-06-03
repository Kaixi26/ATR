#!/usr/bin/env python3
import sys
import subprocess
import time
import json
import re

model = None
tests = None
timeout = 60

def arepair_cmd():
    ret = "timeout " + str(timeout)
    ret += " ./arepair.sh --run --scope 3 --minimum-cost 3 --search-strategy base-choice"
    ret += " --model-path " + model
    ret += " --test-path " + tests
    return ret

argv = sys.argv
cmd = argv.pop(0)

while len(argv) > 0:
    arg = argv.pop(0)
    if arg == "--model":
        model = argv.pop(0)
    elif arg == "--tests":
        tests = argv.pop(0)
    elif arg == "--timeout":
        timeout = int(argv.pop(0))

if model == None:
    print("--model or --test was not given as argument.", file=sys.stderr)
    print("Usage: " + cmd + " --model [FILE] --tests [FILE] --timeout [secs]", file=sys.stderr)
    exit(1)

if tests == None:
    tests = model + ".tests"


subprocess.run("mkdir -p .hidden || rm -f .hidden/*", shell=True)

print("running command '" + arepair_cmd() + "'", file=sys.stderr)

begin = time.time()

with open(model + ".log", "w") as f:
    subprocess.run(arepair_cmd(), shell=True, stdout=f)

end = time.time()
elapsed = int((end - begin) * 1000)

with open(".hidden/fix.als", "r") as ffix:
    with open(model + ".fix", "w") as fmodel:
        def remove_fact(model):
            srch = re.search("fact\s+___repair.*{", model)
            start = srch.end() - 1
            end = start + 1
            depth = 1
            while depth > 0:
                if model[end] == "{": depth += 1
                if model[end] == "}": depth -= 1
                end += 1
            return model[0:srch.start()] + model[end:]

        fmodel.write(re.sub("\s_repair", " __repair", remove_fact(ffix.read())))

atrresult = subprocess.run("./atr.sh atr.jar --depth 0 --timeout 10 --file '" + model + ".fix'"
    , shell=True
    , stdout=subprocess.PIPE)

result = {}
result["file"] = model
result["elapsed"] = elapsed
if atrresult.returncode == 0:
    result["solved"] = json.loads(atrresult.stdout)["solved"]
else:
    result["solved"] = False
result["fixed"] = subprocess.run("grep 'All tests pass.' '" + model + ".log'", shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL).returncode == 0
result["timeout"] = timeout

print(json.dumps(result))
