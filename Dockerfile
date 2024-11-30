# Use a base image with JDK installed (OpenJDK 11 in this case)
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source code (WelcomeMessage.java) into the container's working directory
COPY WelcomeMessage.java /app/

# Compile the Java program
RUN javac WelcomeMessage.java

# Run the Java program
CMD ["java", "WelcomeMessage"]
