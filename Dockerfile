# Base image
FROM eclipse-temurin:17-jdk-jammy

# Working directory
WORKDIR /app

# Copy jar into container
COPY target/item-0.0.1-SNAPSHOT.jar app.jar

# Expose port
EXPOSE 8081

# Run jar
ENTRYPOINT ["java","-jar","target/item-0.0.1-SNAPSHOT.jar"]
