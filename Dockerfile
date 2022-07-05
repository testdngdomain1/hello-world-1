FROM centos:7
RUN yum install java -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.64/bin/apache-tomcat-9.0.64.tar.gz .
RUN tar -zxvf apache-tomcat-9.0.64.tar.gz
RUN cp -R apache-tomcat-9.0.64 /opt/tomcat
COPY ./*.war /opt/tomcat/webapps
EXPOSE 8080
ENTRYPOINT [ "/opt/tomcat/bin/catalina.sh","run" ]
