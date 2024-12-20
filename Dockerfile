# Use an official OpenJDK 21 runtime as a parent image
FROM alpine/java:21-jdk

# Copy the executable jar file to the container
COPY build/libs/demo-0.0.1-SNAPSHOT.jar /demo.jar

# Set the working directory in the container
WORKDIR /

# Expose the port the application runs on
EXPOSE 8080

# Set environment variable
# ENV TEST_MESSAGE=${MESSAGE}

# Run the jar file
ENTRYPOINT ["java", "-jar", "/demo.jar"]
