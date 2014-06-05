#utility functions for manipulating .txt and .j files

import re
import os

JASS_FILE_EXTENSION = ".j"

TEXT_FILE_EXTENSION = ".txt"


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


    
