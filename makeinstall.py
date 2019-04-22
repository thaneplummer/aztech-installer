"""

makeinstall.py

--tkp

"""


from glob import glob
import os
import sys
from shutil import copy2


def getFiles(path):
    # Get automagically later
    filepath = os.path.join(path, "..", "deltafiles_v1.7.3.14.txt")
    print("Reading ", filepath)
    lines = open(filepath, "rt").readlines()
    print("Read lines: ", len(lines))
    files = []
    offset = len("M Aztech-EHS/")
    for line in lines:
        if (line.startswith("M ") or line.startswith("A")):
            fpath = line[offset:].strip()
            files.append(fpath)
    return files


def main(path, dest):
    # Ensure dest folder exists.
    if (not os.path.exists(dest)):
        print("Making dest folder...")
        os.mkdir(dest)
    # Get DLLs.
    binfiles = glob(os.path.join(path, "bin", "Aztech-*.*"))
    for binfile in binfiles:
        print("Copying ", binfile)
        copy2(binfile, dest)
    # Get the rest of the files
    files = getFiles(path)
    for filepath in files:
        src = os.path.join(path, filepath)
        dst = os.path.join(dest, filepath)
        #print(src, dst)
        print("Copying ", filepath)
        os.makedirs(os.path.dirname(dst), exist_ok=True)
        copy2(src, dst)


if __name__ == "__main__":
    path = r"C:\Projects\Aztech\Aztech-EHS\Source\Aztech-EHS"
    dest = r"C:\Projects\Aztech\Aztech-EHS\Source\Install"
    main(path, dest)