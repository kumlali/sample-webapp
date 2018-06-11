#!/bin/sh
# ------------------------------------------------------------------------------
# Because CLASSPATH variable is unset in catalina.sh, setting and
# exporting it before starting Tomcat does not work. Tomcat suggests 
# us to set CLASSPATH variable in setenv.sh, if necessary. Please read
# comments in catalina.sh.
# ------------------------------------------------------------------------------
export CLASSPATH="${CLASSPATH}:${CATALINA_HOME}/../conf"
