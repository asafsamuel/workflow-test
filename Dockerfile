# Use lightweight, secure JRE base image (smaller than full JDK)
FROM eclipse-temurin:8-jre-alpine

# Set the working directory inside the container
WORKDIR /usr/app

# Copy any built JAR file from Gradle output directory
COPY ./build/libs/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
