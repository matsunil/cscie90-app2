FROM tomcat:7-jre8
COPY target/springmvc-stand-alone.war /usr/local/tomcat/webapps/app2.war
COPY tomcat-users.xml $CATALINA_HOME/conf/