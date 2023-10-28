
#! /usr/bin/python
# -*-coding:utf-8 -*-
#coding=utf-8
import io
import sys
import platform
import re
import json
import subprocess
sys.stdout=io.TextIOWrapper(sys.stdout.buffer,encoding='utf8')

# system = platform.system()


def is_empty(variable):
    if variable is None:
        return True
    if isinstance(variable, str) and variable == "":
        return True
    if isinstance(variable, (list, tuple, dict, set)) and len(variable) == 0:
        return True
    return False

def run_shell_command(command: str = "", shell: str = "powershell") -> int:
    if shell == "powershell":
        command = "powershell.exe -noprofile -c " + command
    elif shell == "pwsh":
        command = "pwsh.exe -noprofile -c " + command
    command_array = command.split(" ")
    # https://blog.51cto.com/u_16175493/7917058
    # result = subprocess.run(command_array, capture_output=True, text=True)
    result = subprocess.run(command_array, capture_output=True, shell=True, text=True)
    if result.returncode == 0:
        print('命令执行成功！')
        print('命令的输出结果为：')
        print(result.stdout)
    else:
        print('命令执行失败！')
        print('命令的错误输出为：')
        print(result.stderr)
    return result.returncode



run_shell_command("ls")
# run_shell_command("mkdir a,b")
# run_shell_command("gcm choco", "pwsh")
# run_shell_command("dir", "cmd")






















