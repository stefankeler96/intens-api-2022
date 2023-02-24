#FROM alpine:latest
#
#RUN apk add openjdk8 maven \
#    && adduser -D devops \
#    && su devops
#
#ENV PORT=8080
#EXPOSE 8080
#COPY . ./app
#WORKDIR /app
#
#ENTRYPOINT ["mvn", "-B", "package", "--file", "pom.xml"]

FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]

EXPOSE 8080
