FROM tomcat:jdk17-openjdk-slim

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/api.war /usr/local/tomcat/webapps/api.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
