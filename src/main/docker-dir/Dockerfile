FROM tomcat:7-jre7
MAINTAINER "Dan Foulkes <danfoulkes@gmail.com>"

ADD settings.xml /usr/local/tomcat/conf/
ADD tomcat-users.xml /usr/local/tomcat/conf/
ADD trainer.war /usr/local/tomcat/webapps/root.war

EXPOSE 8080
