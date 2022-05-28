#!/usr/bin/env python
import json
import re
import sys
import os
import re

program = sys.argv.pop(0)

if len(sys.argv) < 3:
    print("Usage: " + program + " [MAX_TESTS] [ATR_RESULTS] [MODEL]...")
    exit(1)

max_tests = int(sys.argv.pop(0))

results = []
with open(sys.argv.pop(0)) as f:
    for line in f:
        results.append(json.loads(line))

def remove_dollar(str):
	return re.sub("\$", "", str)

def indent(str, depth):
    pad = "  " * depth
    return pad + re.sub('\n', "\n" + pad, str)

def intercalate(strs, sep):
    strs = list(strs)
    if len(strs) == 0:
        return ""
    ret = strs[0]
    for str in strs[1:]:
        ret += sep + str
    return ret

def quantifiers(sigs, fields):
    if not any(map(lambda x: len(x) > 0, sigs.values())):
    	return "{"
    ret = "some "

    def variables():
        vars = {}
        for sig in sigs:
            for var in sigs[sig]:
                if var[0:len(sig)] == sig:
                    v = vars.get(sig, [])
                    v.append(var)
                    vars[sig] = v
        return vars
    
    def quantifier(sig):
        ret = "disj "
        ret += intercalate(map(remove_dollar, vars[sig]), ", ")
        ret += ": " + sig
        return ret

    vars = variables()

    ret += intercalate(map(lambda sig: quantifier(sig), vars), ", ")

    return ret + " {"

def set_assign(label, variables):
    if len(variables) == 0:
        return "no " + label
    return label + " = " + intercalate(map(remove_dollar, variables), " + ")

def sigs_str(sigs, fields):
    ret = "{\n"
    ret += indent(intercalate(map(lambda sig: set_assign(sig, sigs[sig]), sigs.keys()), "\n"), 1)
    ret += "\n}"
    return ret

def fields_str(sigs, fields):
    ret = "{\n"
    ret += indent(intercalate(map(lambda field: set_assign(field, fields[field]), fields.keys()), "\n"), 1)
    ret += "\n}"
    return ret

def generate_test(name, cex):
    sigs = cex["sigs"]
    fields = cex["fields"]
    expected = cex["expected"]
    out = "pred " + name + " {\n"
    out += indent(quantifiers(sigs, fields), 1) + "\n"
    out += indent(sigs_str(sigs, fields), 2) + "\n"
    out += indent(fields_str(sigs, fields), 2) + "\n"
    out += indent("}", 1) + "\n"
    out += "}\n"
    out += "run " + name + " expect " + str(expected) + "\n"

    return out

def generate_tests(model_name):
    prefix = re.match(r"^.*_.*_", model_name)[0]

    cexs = {}

    for result in results:
        if os.path.basename(result["file"]).startswith(prefix):
            for cex in result.get("cexs", []):
                key = json.dumps(cex)
                cexs[key] = cexs.get(key, 0) + 1

    i = 0
    out = ""
    for cex in sorted(list(cexs), key = lambda cex: -cexs[cex]):
        if i >= max_tests:
            break
        out += generate_test("test" + str(i), json.loads(cex)) + "\n"
        i += 1
    print(model_name + ": " + str(i) + " generated")

    return out

for file in sys.argv:
    with open(file + ".tests", "w") as f:
        if re.match("^.*\.als$", file):
            f.write(generate_tests(os.path.basename(file)))
