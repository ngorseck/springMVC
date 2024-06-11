FROM eclipse-temurin:11-jdk-jammy as maven_builder

RUN apt-get update
RUN apt-get install -y maven

ENV HOME=/app

WORKDIR $HOME

ADD pom.xml $HOME

#RUN ["mvn", "dependency:resolve"]

#RUN ["/usr/local/bin/mvn-entrypoint.sh", "mvn", "verify", "clean", "--fail-never"]

ADD . $HOME

RUN ["mvn","clean","install","-T","2C","-DskipTests=true"]


FROM bitnami/tomcat:9.0

COPY --from=maven_builder /app/target/webjsp.war /opt/bitnami/tomcat/webapps/webjsp.war

EXPOSE 8080

#docker build -t webjsp-tomcat:1.0.2 .
#docker run --name webjsp-tomcat -e TOMCAT_USERNAME=seckngor -e TOMCAT_PASSWORD=passer -p 8082:8080 -d webjsp-tomcat:1.0.2
