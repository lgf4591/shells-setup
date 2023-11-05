
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
    if(shell == "powershell") or (shell == "pwsh"):
        command = shell + " -noprofile -c " + command
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



# run_shell_command("ls")
# run_shell_command("mkdir a,b")
run_shell_command("gcm choco")
run_shell_command("gcm choco", "pwsh")
# run_shell_command("dir", "cmd")



def run_shelll_script(script_path: str = "", shell: str = "powershell"):
    try:
        # result = subprocess.run([shell, script_path], capture_output=True, text=True)
        if (shell == "powershell") or (shell == "pwsh"):
            result = subprocess.run([shell, '-noprofile', '-file', script_path], capture_output=True, text=True)
        else:
            result = subprocess.run([shell, script_path], capture_output=True, text=True)
        if result.returncode == 0:
            print("脚本执行成功！")
            print("输出结果：")
            print(result.stdout)
        else:
            print("脚本执行失败！")
            print("错误信息：")
            print(result.stderr)
    except Exception as e:
        print("脚本执行出错：", e)

# 要执行的shell脚本文件路径
script_file = "./test/test.ps1"

# 调用自定义函数执行脚本文件
run_shelll_script(script_file)
run_shelll_script(script_file, "pwsh")


















