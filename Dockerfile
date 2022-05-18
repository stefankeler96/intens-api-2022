# First stage: building jar artifact
FROM maven:3-openjdk-8 AS build
# PITANJE: da li moze ovde nekako da se iskoristi env varijabla definisana u githabu
ENV PORT=8080 
RUN mkdir /usr/src/project
COPY . /usr/src/project
WORKDIR /usr/src/project
RUN mvn clean install

#Second stage: take only .jar artifact (to reduce size of our image) and run it
FROM openjdk:8-jre-alpine AS run
ENV PORT=8080
RUN mkdir /project
COPY --from=build /usr/src/project/target/demo-project.jar /project
WORKDIR /project
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser
CMD java -jar demo-project.jar