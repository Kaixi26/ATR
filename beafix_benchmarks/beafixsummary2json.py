#!/usr/bin/env python
import json
import sys

def to_json(line: str) -> str:
    fields = line.split("; ")

    result = {}

    if len(fields) == 5:
        result["elapsed"] = "N/A"
        result["solved"] = False
        result["file"] = fields[0] + ".als"
        result["depth"] = int(fields[3][6:])

        return json.dumps(result)
    elif len(fields) == 7:
        try:
            result["elapsed"] = int(fields[2])
        except:
            result["elapsed"] = "N/A"
        result["depth"] = int(fields[5][6:])
        result["file"] = fields[0] + ".als"
        result["solved"] = fields[1] == "true"

        return json.dumps(result)
    else:
        raise Exception()


if len(sys.argv) == 2:
    filename = sys.argv[1]
    with open(filename) as f:
        for line in f:
            try:
                print(to_json(line))
            except Exception as e:
                pass
