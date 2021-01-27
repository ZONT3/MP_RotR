import os
import re
from optparse import OptionParser
import pyperclip

PATTERN_INCLUDE = r"fn_.*\.sqf"
PATTERN_EXCLUDE = r"fn_dev_.*"

prs = OptionParser()
prs.add_option("-d", "--dir", dest="dir", help="Specify a dir. Default - script dir", metavar="DIR",
               default=os.path.split(__file__)[0])
opts, args = prs.parse_args()

res = "[ "
first = True
for filename in os.listdir(opts.dir):
    if re.match(PATTERN_EXCLUDE, filename):
        continue
    if not re.match(PATTERN_INCLUDE, filename):
        continue

    if not first:
        res += ", "
    else:
        first = False
    res += f"\"{filename}\""

pyperclip.copy(res + " ] call ZONT_fnc_dev_update")
