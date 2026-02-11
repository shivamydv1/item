# Use a supported OpenJDK 17 image
FROM eclipse-temurin:17-jdk-jammy

# Set working directory
WORKDIR /app

# Copy Maven wrapper & pom.xml
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .

# Copy source code
COPY src ./src

# Give execute permission to mvnw
RUN chmod +x mvnw

# Build the JAR inside Docker
RUN ./mvnw clean package -DskipTests

# Expose port
EXPOSE 8081

# Run the built JAR
ENTRYPOINT ["java","-jar","target/item-0.0.1-SNAPSHOT.jar"]
