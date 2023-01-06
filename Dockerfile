FROM openjdk:8-jdk-alpine

WORKDIR /opt/app

COPY target/praksa2022-0.0.1-SNAPSHOT.jar /opt/app/

CMD ["java","-jar","praksa2022-0.0.1-SNAPSHOT.jar"]
