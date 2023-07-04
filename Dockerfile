# Use a base image with Java 11
FROM openjdk:11-jdk

# Set the working directory in the container
WORKDIR /app

# Copy the WAR file to the container
COPY target/SpringBootRestCrudMySQLEx-1.0.war SpringBootRestCrudMySQLEx-1.0.war

# Expose the port that the embedded Tomcat server listens on
EXPOSE 8080

# Set the entry point command to run the application
ENTRYPOINT ["java", "-jar", "SpringBootRestCrudMySQLEx-1.0.war"]
