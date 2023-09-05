#!/usr/bin/env bash

DEST_DIR=/usr/local

function check_env(){
    egrep "JAVA_HOME|JAVA|java" /etc/profile > /dev/null
    if [ `echo $?` == '0' ];then
        echo "java is installd."
        exit 1
    fi
}

function config_env(){
ln -sf ${DEST_DIR}/$(ls ${DEST_DIR}|grep "jdk") ${DEST_DIR}/java
cat >> /etc/profile << EOF
export JAVA_HOME=/usr/local/java
export CLASSPATH=.:\$JAVA_HOME/jre/lib/rt.jar:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib/tools.jar
export PATH=\$JAVA_HOME/bin:\$PATH
EOF
}

function main() {
    check_env
    config_env
    echo "$PATH --- $JAVA_HOME"
}
main