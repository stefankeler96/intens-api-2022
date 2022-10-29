# AS <NAME> to name this stage as maven
FROM maven:3.6.3 AS maven

WORKDIR /usr/src/app
COPY . /usr/src/app
RUN mvn package 

# For Java 8, 
FROM adoptopenjdk/openjdk8:alpine-jre

ARG JAR_FILE=praksa2022.jar

WORKDIR /opt/app

COPY --from=maven /usr/src/app/target/${JAR_FILE} /opt/app/

ENTRYPOINT ["java","-jar","spring-boot-api-tutorial.jar"]
