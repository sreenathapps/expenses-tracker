# Use a base image with Java support
FROM openjdk:17-jdk-slim


# Set the working directory inside the container
WORKDIR /app

# # Copy the JAR file into the container (ensure the file is in the target folder after building)
COPY target/expensetracker-0.0.1-SNAPSHOT.jar /app/ExpenseTracker.jar

# Expose port for the Spring Boot app
EXPOSE 8080

# Command to run the Spring Boot application
CMD ["java", "-jar", "/app/ExpenseTracker.jar"]