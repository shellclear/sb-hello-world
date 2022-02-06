FROM quay.io/shellclear/openjdk:1.11-2

ENV BUILDER_VERSION="1.0" \
    APP_VERSION="0.1.0"

LABEL maintainer="Paulo Pacifico <ppacific@redhat.com>" \
      io.k8s.description="A hello-world java app based on ubi8/openjdk-11" \
      io.k8s.display-name="java-hello-world-10" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="java-hello-world:1.0" \
      Component="Java" \
      Name="openjdk" \
      Version="1.11.2"

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} /deployments/app.jar

USER 1001

EXPOSE 8080

ENTRYPOINT ["java","-jar","/deployments/app.jar"]
