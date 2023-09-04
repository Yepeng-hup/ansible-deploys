#!/usr/bin/env bash

DEST_DIR=/usr/local

function config_env(){
ln -sf ${DEST_DIR}/$(ls ${DEST_DIR}|grep "jdk") ${DEST_DIR}/java
cat >> /etc/profile << EOF
export JAVA_HOME=/usr/local/java
export CLASSPATH=.:\$JAVA_HOME/jre/lib/rt.jar:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib/tools.jar
export PATH=\$JAVA_HOME/bin:\$PATH
EOF
source /etc/profile && echo "$PATH --- $JAVA_HOME"
}
config_env