LABEL authors="mohan"
# Use lightweight Java 17 image
FROM eclipse-temurin:17-jre

# Set working directory
WORKDIR /app

# Copy the built jar
COPY target/*.jar app.jar

# Expose port (Render uses PORT env var)
EXPOSE 8080

# Start the app
ENTRYPOINT ["java","-jar","app.jar"]
