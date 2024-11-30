# Use OpenJDK 11 JDK image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Java source code (WelcomeMessage.java) into the container's working directory
COPY WelcomeMessage.java /app

# Compile the Java program
RUN javac WelcomeMessage.java

# Run the Java program
CMD ["java", "WelcomeMessage"]

