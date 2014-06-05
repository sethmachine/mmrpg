#functions to write scripts for importing object scripts

import os

import re

GET_FILE_EXTENSION = re.compile(r'(?<=.)[a-z]+')

IMPORT_HEADER = "//! import " #"filepath"

FILE_IMPORTER_HEADER = "//! external FileImporter "

JASS_FILE_EXTENSION = ".j"

CODE = "C:\\Users\\Seth\\mmrpg\\code\\"

#JASS = "C:\\Users\\Seth\\mmrpg\\jass\\code\\"

ALL = "C:\\Users\\Seth\\mmrpg\\"

IMPORTS = "C:\\Users\\Seth\\mmrpg\\code\\lua\\imports\\"


SCRIPTS_DIR = "C:\\Users\\Seth\\mmrpg\\scripts\\"


def compile_script_lines(name = "abilities", BIG_PATH = CODE, lines = []):
    for fileName in os.listdir(BIG_PATH + name):
        #print fileName
        filePath = BIG_PATH + name + "\\" + fileName
        #print filePath
        if os.path.isfile(filePath):
            lines.append(IMPORT_HEADER + '"' + filePath + '"')
            
        else:
            compile_script_lines(name + "\\" + fileName, BIG_PATH, lines)

def compile_script(name = "abilities", BIG_PATH = CODE):
    """Compiles all lua object generation files
    into a single .j file for an object type.
    """
    lines = []
    compile_script_lines(name, BIG_PATH, lines)
    w = open(SCRIPTS_DIR + name + JASS_FILE_EXTENSION, 'w')
    for line in lines:
        print>>w, line
    w.close()


def compile_import_script(name = "units", PATH = "C:\\Imports\\"):
    w = open(IMPORTS + name, 'w')
    for fileDir in os.listdir(PATH + name):
        for fileName in os.listdir(PATH + name + "\\" + fileDir):
            fileExtension = GET_FILE_EXTENSION.findall(fileName)[1]
            if fileExtension != "html" and fileExtension != "txt":
                importStr = FILE_IMPORTER_HEADER
                
                
                


        

            
    



