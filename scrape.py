import sys
import random

techniques = []
for line in sys.stdin:
  if "See also" in line:
    break
  if line.lstrip().startswith("*"):
    #line = line.split(" technique")
    #line = ''.join(line)
    line = line.strip()
    line = " " + line
    sub_techs = line.split(" * ")
    sub_techs = sub_techs[1:]
    
    techniques.extend(sub_techs)
#print(techniques)
print(random.choice(techniques))


