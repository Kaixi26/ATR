#!/usr/bin/env python
import json
import re

cex = json.loads('''{
    "sigs": {
        "Position": ["Position$0", "Position$1", "Position$2"],
        "Resource": ["Resource$0"],
        "Product": ["Resource$0", "Component$0", "Component$1"],
        "Component": ["Component$0", "Component$1"],
        "Robot": ["Robot$0", "Robot$1"]
    },
        "fields": {
        "cposition": ["Component$0->Position$2", "Component$1->Position$1"],
        "rposition": ["Robot$0->Position$1", "Robot$1->Position$0"],
        "parts": ["Component$0->Resource$0", "Component$1->Component$1"]
    }
}''')

sigs = cex["sigs"]
fields = cex["fields"]

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

def quantifiers():
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

def sigs_str():
    ret = "{\n"
    ret += indent(intercalate(map(lambda sig: set_assign(sig, sigs[sig]), sigs.keys()), "\n"), 1)
    ret += "\n}"
    return ret

def fields_str():
    ret = "{\n"
    ret += indent(intercalate(map(lambda field: set_assign(field, fields[field]), fields.keys()), "\n"), 1)
    ret += "\n}"
    return ret


name = "test0"
out = "pred test0 {\n"
out += indent(quantifiers(), 1) + "\n"
out += indent(sigs_str(), 2) + "\n"
out += indent(fields_str(), 2) + "\n"
out += indent("}", 1) + "\n"
out += "}\n"
out += "run test0 expect 1"

print(out)