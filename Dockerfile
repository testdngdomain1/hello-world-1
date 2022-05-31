FROM centos:7.9.2009
RUN yum install java -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.63/bin/apache-tomcat-9.0.63.tar.gz .
RUN tar -zxvf apache-tomcat-9.0.63.tar.gz
RUN cp -R /opt/tomcat/apache-tomcat-9.0.63/* /opt/tomcat
EXPOSE 8080
ENTRYPOINT ["/opt/tomcat/bin/catalina.sh","run"]
