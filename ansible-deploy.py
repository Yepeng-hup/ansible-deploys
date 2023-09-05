#!/usr/bin/env python3
# coding: UTF-8

import os
import sys
from datetime import datetime
from colorama import init

#times = datetime.now().strftime('%Y-%m-%d %H:%M:%S')


def command_help():
    print("Use command:")
    print("     python ansible-deploy.py mysql    Usage examples.")
    print("         Option: [custom,java,kvm,maven,go,minitools]")


class Deploy(object):

    def java_way(self):
        os.chdir("deploy_all/java")
        cmd = "ansible-playbook java_role.yaml"
        os.system(cmd)

    def maven_way(self):
        os.chdir("deploy_all/maven")
        cmd = "ansible-playbook maven_role.yaml"
        os.system(cmd)

    def go_way(self):
        os.chdir("deploy_all/go")
        cmd = "ansible-playbook go_role.yaml"
        os.system(cmd)

    def kvm_way(self):
        print("my kvm")

    def minitools_way(self):
        os.chdir("deploy_all/minitools")
        cmd = "ansible-playbook minitools_role.yaml"
        os.system(cmd)

    def custom_way(self):
        pass


if __name__ == "__main__":
    init()
    deploy = Deploy()
    try:
        argv_str = sys.argv[1]
        if argv_str != "-h":
            if argv_str == "java":
                deploy.java_way()
            elif argv_str == "maven":
                deploy.maven_way()
            elif argv_str == "go":
                deploy.go_way()
            elif argv_str == "minitools":
                deploy.minitools_way()
            elif argv_str == "kvm":
                deploy.kvm_way()
            elif argv_str == "custom":
                deploy.custom_way()
            else:
                print("\033[1;31mERROR: not have parameter.\033[0m")
        else:
            command_help()
    except:
        command_help()
