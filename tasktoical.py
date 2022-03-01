#! /usr/bin/env python3

import subprocess
from pathlib import Path

output_path=Path("/home/jordan/.local/share/calcurse/twTodos.ics")
output = open(output_path, "w+")
output.truncate()
output.write("BEGIN:VCALENDAR\nVERSION:2.0\n")
descriptions = subprocess.run(["task", "ical_description"], stdout=subprocess.PIPE, text=True).stdout.split("\n")
urgencies = subprocess.run(["task", "ical_urgency"], stdout=subprocess.PIPE, text=True).stdout.split("\n")

start = 3
end = -3
descriptions = descriptions[start:end]
urgencies = urgencies[start:end]

def normalizeUrgency(urgency):
    x = float(urgency)
    return 9-int((9)*((x)/15))

for d,u in zip(descriptions, urgencies):
    priority = normalizeUrgency(u)
    output.write("BEGIN:VTODO\nPRIORITY:"+str(priority)+"\nSUMMARY:"+d+"\nEND:VTODO\n")
output.write("END:VCALENDAR")
output.close()
