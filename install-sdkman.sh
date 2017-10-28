#!/usr/bin/env bash
#
# System Required: CentOS, Debian, Ubuntu
#
# Description: Install SDKMAN
#
# Author: Huang Yuhui
#

check_sys() {
    local checkType=$1
    local value=$2

    local release=''
    local systemPackage=''

    if [ -f /etc/redhat-release ]; then
        release="centos"
        systemPackage="yum"
    elif cat /etc/issue | grep -Eqi "debian"; then
        release="debian"
        systemPackage="apt"
    elif cat /etc/issue | grep -Eqi "ubuntu"; then
        release="ubuntu"
        systemPackage="apt"
    elif cat /etc/issue | grep -Eqi "centos|red hat|redhat"; then
        release="centos"
        systemPackage="yum"
    elif cat /proc/version | grep -Eqi "debian"; then
        release="debian"
        systemPackage="apt"
    elif cat /proc/version | grep -Eqi "ubuntu"; then
        release="ubuntu"
        systemPackage="apt"
    elif cat /proc/version | grep -Eqi "centos|red hat|redhat"; then
        release="centos"
        systemPackage="yum"
    fi

    if [ ${checkType} = "sysRelease" ]; then
        if [ "$value" = "$release" ]; then
            return 0
        else
            return 1
        fi
    elif [ ${checkType} = "packageManager" ]; then
        if [ "$value" = "$systemPackage" ]; then
            return 0
        else
            return 1
        fi
    fi
}

if check_sys packageManager yum; then
    sudo yum install curl zip unzip -y
elif check_sys packageManager apt; then
    sudo apt update
    sudo apt install curl zip unzip -y
else
    echo "ERROR：Not supported distro."
    exit 1
fi

curl -s "https://get.sdkman.io" | bash

echo "################################################################################"
echo "# 1. Open a new terminal or enter 'source $HOME/.sdkman/bin/sdkman-init.sh'"
echo "# 2. Run the command 'sdk version' to ensure that installation succeeded"
echo "################################################################################"
