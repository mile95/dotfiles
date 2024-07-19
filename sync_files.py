import json
import shutil
import os
import subprocess


cwd = os.getcwd()

 
with open('files.json') as json_file:
    entries = json.load(json_file)


for name, path in entries.items():
    if "~" in path:
        path = os.path.expanduser(path)
    shutil.copy2(path, f"{cwd}/{name}")


proc_diff = subprocess.run(["git", "diff", "--exit-code"], capture_output=True)
stdout = proc_diff.stdout
stderror = proc_diff.stderr
returncode = proc_diff.returncode

if returncode != 0:
    print("found diff")
    proc_add = subprocess.run(["git", "add", "--all"])
    proc_commit = subprocess.run(["git", "commit", "-m", "Auto update"])
    proc_push = subprocess.run(["git", "push"])
    print("pushed changes")
else:
    print("found no diff")
