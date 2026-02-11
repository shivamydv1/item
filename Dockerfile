# Base image
FROM openjdk:17-jdk-slim

# Working directory
WORKDIR /app

# Copy jar into container
COPY target/item-0.0.1-SNAPSHOT.jar app.jar

# Expose port
EXPOSE 8081

# Run jar
ENTRYPOINT ["java","-jar","app.jar"]
