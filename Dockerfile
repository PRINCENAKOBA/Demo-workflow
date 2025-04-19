# Use OpenJDK 8 base image with Alpine Linux
FROM openjdk:8-jre-alpine

# Expose port 8080 to the outside world
EXPOSE 8080

# Copy the Spring Boot JAR file into the container
COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/

# Set the working directory inside the container
WORKDIR /usr/app

# Run the Spring Boot application using the JAR file
ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
