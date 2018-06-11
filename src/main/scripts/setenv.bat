rem ----------------------------------------------------------------------------
rem Because CLASSPATH variable is unset in catalina.bat, setting it before
rem starting Tomcat does not work. Tomcat suggests us to set CLASSPATH 
rem variable in setenv.bat, if necessary. Please read comments in catalina.bat.
rem ----------------------------------------------------------------------------
set CLASSPATH=%CLASSPATH%;%CATALINA_HOME%\..\conf
