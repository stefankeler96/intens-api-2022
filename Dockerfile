# Use an OpenJDK 8 base image
FROM openjdk:8-jdk-alpine

# Set the working directory
WORKDIR /app

# Create a volume for Maven dependencies
VOLUME /root/.m2

# Install Maven
RUN apk add --no-cache maven

# Copy the pom.xml file to the container
COPY pom.xml .

# Run Maven to download dependencies
RUN mvn -B dependency:resolve

# Copy the rest of the project files to the container
COPY . .

# Build the project with Maven
RUN mvn -B package

# Set the startup command to run the compiled JAR file
CMD ["java", "-jar", "target/praksa2022-0.0.1-SNAPSHOT.jar"]
