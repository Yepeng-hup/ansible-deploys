#!/usr/bin/env bash

DEST_DIR=/usr/local

function config_env(){
ln -sf ${DEST_DIR}/$(ls ${DEST_DIR}|grep "maven") ${DEST_DIR}/maven
cat >> /etc/profile << EOF
export MAVEN_HOME=/usr/local/maven
export PATH=\$MAVEN_HOME/bin:\$PATH
EOF
}

function main() {
    config_env
    source /etc/profile && sleep 1s
    source /etc/profile
    echo "$PATH --- $MAVEN_HOME"
}
main