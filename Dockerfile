FROM openjdk:11-jre-slim

WORKDIR /app

COPY target/praksa2022-0.0.1-SNAPSHOT.jar /app/praksa2022.jar

ENV PORT=8080
EXPOSE $PORT

CMD ["java", "-jar", "praksa2022.jar"]