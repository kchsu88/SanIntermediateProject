import os
from logger import logger
from re import L
import os_util
import funcs
from parallel_model import parallel_util

CC_SAN_DIR_PREFIX = "ccsan"
CC_SAN_RES_PREFIX = "ccsan_"

if os_util.is_windows_platform():
    PATH = ""
else:
    PATH = os.path.normpath(os.path.dirname(os.path.abspath(__file__)) + "/../") + '/'

def cmd():
    logger.info("++++KCTEST Start to change name++++")
    Base_dir = PATH + os.path.normpath(os.path.join('sanintermediatesdk'))
    logger.info("Check Base_dir: " + Base_dir)

    smaliDirList = ["smali", "smali_classes2", "smali_classes3"]

    # for smaliDir in smaliDirList:
    #     specificSmaliDir = os.path.normpath(os.path.join(Base_dir, smaliDir))
    #     rename(specificSmaliDir)

    # Add prefix to resource files
    resourceDir = os.path.normpath(os.path.join(Base_dir, 'res'))
    logger.info("Check resourceDir: " + resourceDir)
    list_param = [(Base_dir, resourceDir)]
    parallel_util.send_task_simple_pool(renameResFiles, list_param)
    # renameResFiles(Base_dir, resourceDir)

def rename(smaliDir):
    logger.info("Rename directories in " + smaliDir)
    
    listOfNewName = []
    for origName in os.listdir(smaliDir):
        if origName.startswith(CC_SAN_DIR_PREFIX):
            continue
        newName = CC_SAN_DIR_PREFIX + origName
        listOfNewName.append(newName)
        logger.info("Rename " + origName + " -> " + newName)

        origPath = os.path.normpath(os.path.join(smaliDir, origName))
        newPath = os.path.normpath(os.path.join(smaliDir, newName))
        os.rename(origPath, newPath)

    # change_smali_content(listOfNewName)


def renameResFiles(*args):
    baseDir, resourceDir = args[0]
    count = 0
    for root, dirs, files in os.walk(resourceDir):
        logger.info("Add prefix to the files under: " + root)
        # 先不處處理values底下的naming
        if root.split('/')[-1].startswith("values"):
            logger.warning("Skip " + root)
            continue
        for file in files:
            origResFileName = os.path.splitext(file)[0]
            logger.info("\tfile: " + origResFileName)
            origPath = os.path.normpath(os.path.join(root, file))
            newPath = os.path.normpath(os.path.join(root, CC_SAN_RES_PREFIX + file))
            os.rename(origPath, newPath)
            # 換掉xml或smali中有用到改名後resource name的地方
            replaceContentWithNewResName(baseDir, origResFileName, CC_SAN_RES_PREFIX + origResFileName)
            count += 1

    logger.info("Total resource files count: ", count)

# def renameResFiles(baseDir, resourceDir):
#     count = 0
#     for root, dirs, files in os.walk(resourceDir):
#         logger.info("Add prefix to the files under: " + root)
#         # 先不處處理values底下的naming
#         if root.split('/')[-1].startswith("values"):
#             logger.warning("Skip " + root)
#             continue
#         for file in files:
#             origResFileName = os.path.splitext(file)[0]
#             logger.info("\tfile: " + origResFileName)
#             origPath = os.path.normpath(os.path.join(root, file))
#             newPath = os.path.normpath(os.path.join(root, CC_SAN_RES_PREFIX + file))
#             os.rename(origPath, newPath)
#             # 換掉xml或smali中有用到改名後resource name的地方
#             replaceContentWithNewResName(baseDir, origResFileName, CC_SAN_RES_PREFIX + origResFileName)
#             count += 1
#
#     logger.info("Total resource files count: ", count)

def replaceContentWithNewResName(root, origResFileName, newResFileName):
    if os_util.is_mac_platform():
        grep_cmd = "\"%s\" -rl ./* --include=./*.{smali,xml}" % origResFileName
    else:
        grep_cmd = "\"%s\" -rl ./* --include=*.{smali,xml}" % origResFileName

    logger.info("replaceWithNewResName grep_cmd: " + grep_cmd)
    sed_param = 's/{origin}/{replace}/g;'.format(origin=origResFileName, replace=newResFileName)

    if os_util.is_mac_platform():
        os.system('cd {dir}; export LC_CTYPE=\'C\'; grep {grep_cmd} | xargs sed -i "" -e \'{param}\''.format(dir=root, grep_cmd=grep_cmd, param=sed_param))
    else:
        os.system('cd {dir}; grep {grep_cmd} | xargs sed -i -e \'{param}\''.format(dir=root, grep_cmd=grep_cmd, param=sed_param))

def change_smali_content(smaliDir, listOfNewName):
    parallel_util.send_task_simple_pool(funcs.kctest_mv_smali_file, smaliDir)


# def addPrefixToDir(smaliDir):

    

if __name__ == '__main__':
    cmd()