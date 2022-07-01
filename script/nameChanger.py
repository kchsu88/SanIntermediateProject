import os
from logger import logger
from re import L
import os_util
import funcs
from parallel_model import parallel_util

CC_SAN_PREFIX = "ccsan"

if os_util.is_windows_platform():
    PATH = ""
else:
    PATH = os.path.normpath(os.path.dirname(os.path.abspath(__file__)) + "/../") + '/'

def cmd():
    logger.info("++++KCTEST Start to change name++++")
    Base_dir = PATH + os.path.normpath(os.path.join('sanintermediatesdk'))
    logger.info("Check Base_dir: " + Base_dir)

    smaliDirList = ["smali", "smali_classes2", "smali_classes3"]

    for smaliDir in smaliDirList:
        specificSmaliDir = os.path.normpath(os.path.join(Base_dir, smaliDir))
        rename(specificSmaliDir)

def rename(smaliDir):
    logger.info("Rename directories in " + smaliDir)
    
    listOfNewName = []
    for origName in os.listdir(smaliDir):
        if (origName.startswith(CC_SAN_PREFIX)):
            continue
        newName = CC_SAN_PREFIX + origName
        listOfNewName.append(newName)
        logger.info("Rename " + origName + " -> " + newName)

        origPath = os.path.normpath(os.path.join(smaliDir, origName))
        newPath = os.path.normpath(os.path.join(smaliDir, newName))
        os.rename(origPath, newPath)

    # change_smali_content(listOfNewName)

def change_smali_content(smaliDir, listOfNewName):
    parallel_util.send_task_simple_pool(funcs.kctest_mv_smali_file, smaliDir)


# def addPrefixToDir(smaliDir):

    

if __name__ == '__main__':
    cmd()