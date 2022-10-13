FROM openjdk:17-ea-11-jdk-slim
VOLUME /tmp
COPY apiEncryptionKey.jks apiEncryptionKey.jks
COPY target/config-server-0.0.1.jar ConfigServer.jar
ENTRYPOINT ["java","-jar","ConfigServer.jar"]