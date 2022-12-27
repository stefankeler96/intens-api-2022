FROM maven:3.6.0-jdk-8 AS build
ENV PORT 8080
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

FROM openjdk:8-jre
ENV PORT 8080
COPY --from=build /home/app/target/praksa2022-0.0.1-SNAPSHOT.jar /usr/local/lib/praksa2022-0.0.1-SNAPSHOT.jar
EXPOSE 8080

ENTRYPOINT ["java","-jar","/usr/local/lib/praksa2022-0.0.1-SNAPSHOT.jar"]

#test