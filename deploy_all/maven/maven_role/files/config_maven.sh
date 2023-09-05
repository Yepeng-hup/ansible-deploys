#!/usr/bin/env bash

DEST_DIR=/usr/local

function check_env(){
    egrep "MAVEN_HOME|MAVEN|maven" /etc/profile > /dev/null
    if [ `echo $?` == '0' ];then
        echo "maven is installd."
        exit 1
    fi
}

function config_env(){
ln -sf ${DEST_DIR}/$(ls ${DEST_DIR}|grep "maven") ${DEST_DIR}/maven
cat >> /etc/profile << EOF
export MAVEN_HOME=/usr/local/maven
export PATH=\$MAVEN_HOME/bin:\$PATH
EOF
}

function main() {
    check_env
    config_env
    echo "$PATH --- $MAVEN_HOME"
}
main