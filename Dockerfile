FROM openjdk:8
EXPOSE 8001
ADD target/intens-api-praksa2022.jar intens-api-praksa2022.jar
ENTRYPOINT ["java", "-jar","/intens-api-praksa2022.jar"]