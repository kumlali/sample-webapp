# sample-webapp
A simple web project that demonstrates how to:
* use slf4j and log4j2 binding
* write application logs to Tomcat's console or log file (to enable this, uncomment Console appender related lines in `log4j2.xml`) 
* write application logs to `logs\sample-webapp.log` file
* send application logs to GELF server such as Graylog (to enable this, uncomment Gelf appender related lines in `log4j2.xml`)
* prepare binary distribution package with Maven Assembly Plug-in
* add dependent libraries to the package
* externalize resources(such as `log4j2.xml`) from war file and let Tomcat to load them from a preferred directory. 

# Building
* Clone the project: `git clone https://github.com/kumlali/sample-webapp`
* Build it: `mvn package`
* Now, you should have `target/sample-webapp-dist.zip` file.

# Usage
* Extract `sample-webapp-dist.zip`.
* Update `conf/log4j2.xml` to enable Console and/or Gelf appender, if you need.
* Copy files under `scripts` directory to Tomcat's `bin` directory. For Linux/Unix/Mac, you need to give execution rights to `setenv.sh`)
* Copy `conf` directory to one level up to Tomcat's installation directory. For example, if Tomcat is under `~/sample-webapp/tomcat`, you should have `~/sample-webapp/conf`. You can tweak this structure by updating `setenv.sh|bat`.  
* Deploy `sample-webapp.war` to the Tomcat.
* Start Tomcat
* Open http://appserver:port/sample-webapp (e.g. http://localhost:8080/sample-webapp) URL on your browser.
* If you did not update `conf/log4j2.xml`, you should see application's trace logs in `logs/sample-webapp.log` file.  