import os
from logger import logger
import platform
import shutil
import pathlib
import os_util

def mv_check_path(root):
    logger.info("Check mv_check_path: " + root)

def mv_smali_file(root):
    logger.info('KCTEST check root begin: ' + root)
    if os_util.is_mac_platform():
        grep_cmd = "\"LX\/cc_\\|LX\/c1_\\|LX\/c2_\\|LX\/c3_\\|cc_RecyclerView\\|cc_ViewPager\\|cc_DialogFragment\\|cc_ListFragment\" -rl ./* --include=./*.smali"
    else:
        grep_cmd = "\"LX\/cc_\\|LX\/c1_\\|LX\/c2_\\|LX\/c3_\\|cc_RecyclerView\\|cc_ViewPager\\|cc_DialogFragment\\|cc_ListFragment\" -rl ./* --include=*.smali"
    sed_param = 's/LX\/{origin}/LX\/{replace}/g;'.format(origin='cc_', replace='')
    sed_param += 's/LX\/{origin}/LX\/{replace}/g;'.format(origin='c1_', replace='')
    sed_param += 's/LX\/{origin}/LX\/{replace}/g;'.format(origin='c2_', replace='')
    sed_param += 's/LX\/{origin}/LX\/{replace}/g;'.format(origin='c3_', replace='')
    sed_param += 's/{origin}/{replace}/g;'.format(origin='cc_RecyclerView', replace='RecyclerView')
    sed_param += 's/{origin}/{replace}/g;'.format(origin='cc_ViewPager', replace='ViewPager')
    sed_param += 's/{origin}/{replace}/g;'.format(origin='cc_DialogFragment', replace='DialogFragment')
    sed_param += 's/{origin}/{replace}/g'.format(origin='cc_ListFragment', replace='ListFragment')

    if os_util.is_mac_platform():
        os.system('cd {dir}; grep {grep_cmd} | xargs sed -i "" -e \'{param}\''.format(dir=root, grep_cmd=grep_cmd, param=sed_param))
    else:    
        os.system('cd {dir}; grep {grep_cmd} | xargs sed -i -e \'{param}\''.format(dir=root, grep_cmd=grep_cmd, param=sed_param))

def kctest_mv_smali_file(root):
    logger.info('KCTEST check root kctest_mv_smali_file: ' + root)
    if os_util.is_mac_platform():
        grep_cmd = "\"androidx\" -rl ./* --include=./*.{smali,xml}"
    else:
        grep_cmd = "\"androidx\" -rl ./* --include=*.{smali,xml}"
    sed_param = 's/{origin}/{replace}/g;'.format(origin='androidx', replace='androidy')

    if os_util.is_mac_platform():
        kcCmd1 = 'cd {dir}; grep {grep_cmd} | xargs sed -i "" -e \'{param}\''.format(dir=root, grep_cmd=grep_cmd, param=sed_param)
        os.system(kcCmd1)
        logger.info('KCTEST check kctest_mv_smali_file cmd1: ' + kcCmd1)
    else:
        kcCmd2 = 'cd {dir}; grep {grep_cmd} | xargs sed -i -e \'{param}\''.format(dir=root, grep_cmd=grep_cmd, param=sed_param)
        os.system(kcCmd2)
        logger.info('KCTEST check kctest_mv_smali_file cmd2: ' + kcCmd2)

    # androidmodx replacement
    if os_util.is_mac_platform():
        grep_cmd = "\"androidmodx\" -rl ./* --include=./*.{smali,xml}"
    else:
        grep_cmd = "\"androidmodx\" -rl ./* --include=*.{smali,xml}"

    sed_param = 's/{origin}/{replace}/g'.format(origin='androidmodx', replace='androidx')

    if os_util.is_mac_platform():
        kcCmd1 = 'cd {dir}; grep {grep_cmd} | xargs sed -i "" -e \'{param}\''.format(dir=root, grep_cmd=grep_cmd, param=sed_param)
        os.system(kcCmd1)
        logger.info('KCTEST check kctest_mv_smali_file cmd1(androidmodx replacement): ' + kcCmd1)
    else:
        kcCmd2 = 'cd {dir}; grep {grep_cmd} | xargs sed -i -e \'{param}\''.format(dir=root, grep_cmd=grep_cmd, param=sed_param)
        os.system(kcCmd2)
        logger.info('KCTEST check kctest_mv_smali_file cmd2(androidmodx replacement): ' + kcCmd2)

