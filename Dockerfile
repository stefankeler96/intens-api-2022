# FROM openjdk:8-jre-alpine

# # set shell to bash
# # source: https://stackoverflow.com/a/40944512/3128926
# RUN apk update && apk add bash

# # Set the working directory to /app
# WORKDIR /app

# # Copy the fat jar into the container at /app
# ARG JAR_FILE=target/praksa2022-0.0.1-SNAPSHOT.jar

# ADD ${JAR_FILE} app.jar

# # Make port 8080 available to the world outside this container
# EXPOSE 8088

# # Run jar file when the container launches
# CMD ["java", "-jar", "praksa2022-0.0.1-SNAPSHOT.jar"]


FROM openjdk:11

COPY target/praksa2022-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8088

ENTRYPOINT ["java", "-jar", "/app.jar"]