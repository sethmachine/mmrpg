#utility functions for manipulating .txt and .j files

import os
import platform
import re

BASE_62 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

JASS_FILE_EXTENSION = ".j"

TEXT_FILE_EXTENSION = ".txt"

getFileName = re.compile(r'[a-z_0-9]+(?=\.j)', re.IGNORECASE)
getDirName = re.compile(r'(?<=/|\\)[a-z ]+$', re.IGNORECASE)
p = re.compile(r'// [a-zA-Z ]+.*?upoi \+ 1', re.DOTALL)

if platform.system() == 'Windows':
    root = "C:\\"
elif platform.system() == 'Darwin':
    root = "/Users/"

def text_2_jass(text = "", fileName = "test", path = "C:\\Users\\Seth\\mmrpg\\lua\\"):
    """Takes a string and a file name,
    and creates "fileName.j" at the given path"""
    w = open(path + fileName + JASS_FILE_EXTENSION, 'w')
    print>>w, text
    w.close()

def directory_2_jass(path = "C:\\Users\\Seth\\mmrpg\\lua"):
    """Takes a directory path as an argument
    and creates a .j file for each .txt file"""
    for fileName in os.listdir(path):
        w = open(path + "\\" + fileName, 'r')
        text = w.read()
        w.close()
        text_2_jass(text, fileName.replace(".txt", ""), path + "\\")

def add(value, baseDigits = BASE_62, result = ""):
    if value == "":
        value = "0"
    if value[-1] != baseDigits[-1]:
        next_digit = baseDigits.find(value[-1]) + 1
        return value[:-1] + baseDigits[next_digit] + result
    else:
        return add(value[:-1], baseDigits, result + "0")

def name2Var(name):
    name = name.replace(" ", "_")
    name = name.upper()
    return name

def find(name, path):
    if path != "/Users/" and path != "C:\\":
        if getDirName.findall(path) != []:
            if getDirName.findall(path)[0] == name:
                return path
    for root, dirs, files in os.walk(path):
        if name in files or name in dirs:
            return os.path.join(root, name)

root = find("mmrpg", root)

def getLinesArr(importDir, cwd, lines = [], keywords = []):
    keywordsStr = ""
    for keyword in keywords:
        keywordsStr += keyword + "|"
    keywordsStr += " "
    getKeywords = re.compile(keywordsStr, re.IGNORECASE)
    for fileName in os.listdir(find(importDir, cwd)):
        filePath = find(fileName, cwd)
        if os.path.isfile(filePath) and getKeywords.findall(filePath) == []:
            lines.append(filePath)
        elif getKeywords.findall(filePath) == []:
            getLinesArr(fileName, cwd, lines, keywords)

def getFileNames(importDir, cwd, keywords = []):
    cwd = find(cwd, root)
    l = []
    getLinesArr(importDir, cwd, l, keywords)
    return l







    
