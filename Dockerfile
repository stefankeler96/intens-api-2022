FROM openjdk:8
COPY /target/intens-api-praksa2022.jar intens-api-praksa2022.jar
CMD [ "sh", "-c", "java -Dserver.port=$PORT -jar /intens-api-praksa2022.jar" ]