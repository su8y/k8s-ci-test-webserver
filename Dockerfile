# Use an official OpenJDK 21 runtime as a parent image
FROM openjdk:21-ea-oracle

# Set the working directory in the container
WORKDIR /

# Copy the executable jar file to the container
COPY build/libs/demo-0.0.1-SNAPSHOT.jar /demo.jar

# Expose the port the application runs on
EXPOSE 8080

# Set environment variable
# ENV TEST_MESSAGE=${MESSAGE}

# Run the jar file
ENTRYPOINT ["java", "-jar", "/demo.jar"]