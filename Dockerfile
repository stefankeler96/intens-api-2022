FROM maven:3.6.3-openjdk-8 AS build

COPY pom.xml ./
COPY src ./src

RUN mvn -B -f pom.xml clean package -DskipTests

FROM openjdk:8-jdk-slim

COPY --from=build /target/*.jar praksa2022-0.0.1-SNAPSHOT.jar

ENV PORT="8090"

ENTRYPOINT ["java","-jar","praksa2022-0.0.1-SNAPSHOT.jar"]