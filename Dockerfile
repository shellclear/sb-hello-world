FROM openjdk:17-jdk-alpine

LABEL maintainer="Paulo Pacifico <ppacific@redhat.com>"

ENV BUILDER_VERSION 1.0

LABEL Component="Java" \
      Name="openjdk" \
      Version="17" 

LABEL io.k8s.description="A openjdk image" \
      io.k8s.display-name="OpenJDK17-Alpine image" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="openjdk" 

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

USER 1001

EXPOSE 8080

ENTRYPOINT ["java","-jar","/app.jar"]
