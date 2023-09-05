#!/bin/bash

DEST_DIR=/usr/local

function main(){
cat >> /etc/profile << EMO
export PATH=$PATH:/usr/local/go/bin
export GOPROXY=https://goproxy.io,direct
EMO
if [ `echo $?` -eq 0 ];then
    echo 'go 环境变量已设置。'
else
    echo 'go 环境配置失败,请手动检查.'
fi
}
main
