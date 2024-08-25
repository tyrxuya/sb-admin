# Use the official OpenJDK image as the base image
FROM amazoncorretto:21-alpine

# Set the working directory within the container
WORKDIR /admin

# Copy the packaged JAR file from the target directory into the container
COPY rest/target/admin.jar admin.jar
# Expose the port that your application runs on
EXPOSE 8085

# Define the command to run your application
CMD ["java", "-jar", "admin.jar"]