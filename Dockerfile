# Use a base image with a Java Runtime Environment (JRE)
FROM btgoose/jdk17

# Set the working directory inside the container
WORKDIR /app

# Copy the application's JAR file into the container
# Assuming your JAR is named 'my-java-app.jar' and is in the same directory as the Dockerfile
COPY target/docker-jenkins-integration-sample.jar /app/docker-jenkins-integration-sample.jar

# Expose the port your application listens on (if it's a web application)
# For example, if your Spring Boot app listens on port 8080
EXPOSE 8080

# Define the command to run the application when the container starts
ENTRYPOINT ["java", "-jar", "docker-jenkins-integration-sample.jar"]
