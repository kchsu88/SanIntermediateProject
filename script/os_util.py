# -*- coding:utf-8 -*-
import platform

__is_mac = False
__is_linux = False
__is_windows = False

if platform.system() == "Windows":
    __is_windows = True
else:
    if platform.system() == "Darwin":
        __is_mac = True
    else:
        __is_linux = True


def is_windows_platform():
    return __is_windows


def is_mac_platform():
    return __is_mac


def is_linux_platform():
    return __is_linux
