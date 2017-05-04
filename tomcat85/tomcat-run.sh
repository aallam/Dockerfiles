#!/bin/sh
exec su tomcat -c "$TOMCAT_HOME/bin/catalina.sh run"
