#! /usr/bin/env python3

import subprocess
from pathlib import Path
import json

output_path=Path("/home/jordan/.local/share/calcurse/todo")
output = open(output_path, "w+")
output.truncate()

taskJSON = subprocess.run(["task", "status:pending","export"], stdout=subprocess.PIPE).stdout
taskJSON = json.loads(taskJSON)


def urgencyToPriority(urgency):
    u = float(urgency)
    if u < 0.1:
        return 0
    return 9-int((9)*((u)/15))

for entry in taskJSON:
    urgency = entry["urgency"]
    description = entry["description"]
    priority = urgencyToPriority(urgency)
    output.write("["+str(priority)+"] "+description+"\n")
output.close()

