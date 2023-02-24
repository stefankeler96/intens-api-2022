FROM alpine:latest

RUN apk add openjdk8 \
    && adduser -D devops \
    && su devops

ENV PORT=8080
EXPOSE 8080
COPY . ./app
WORKDIR /app

ENTRYPOINT ["./mvnw", "spring-boot:run"]
