#check user miki
FROM openjdk:8-jdk-alpine
RUN addgroup -S miki && adduser -S miki -G miki
USER miki:miki
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
