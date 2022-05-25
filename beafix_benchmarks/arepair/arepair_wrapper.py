#!/usr/bin/env python3
import sys
import subprocess
import time
import json

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

if model == None or tests == None:
    print("--model or --test was not given as argument.", file=sys.stderr)
    print("Usage: " + cmd + " --model [FILE] --tests [FILE] --timeout [secs]", file=sys.stderr)
    exit(1)


subprocess.run("rm -f .hidden/*", shell=True)

print("running command '" + arepair_cmd() + "'", file=sys.stderr)

begin = time.time()

with open(model + ".log", "w") as f:
    subprocess.run(arepair_cmd(), shell=True, stdout=f)

end = time.time()
elapsed = int((end - begin) * 1000)

subprocess.run("cp .hidden/fix.als '" + model + ".fix'", shell=True)

with open(model + ".elapsed", "w") as f:
    f.write(str(elapsed))

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
result["fixed"] = subprocess.run("grep 'All tests pass.' '" + model + ".log'", shell=True, stderr=subprocess.DEVNULL).returncode == 0
result["timeout"] = timeout

print(json.dumps(result))