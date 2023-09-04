#!/usr/bin/env bash

DEST_DIR=/usr/local

function config_env(){
ln -sf ${DEST_DIR}/$(ls ${DEST_DIR}|grep "maven") ${DEST_DIR}/maven
cat >> /etc/profile << EOF
export MAVEN_HOME=/usr/local/maven
export PATH=\$MAVEN_HOME/bin:\$PATH
EOF
source /etc/profile && echo "$PATH --- $MAVEN_HOME"
}
config_env