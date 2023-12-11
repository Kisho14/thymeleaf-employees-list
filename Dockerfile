# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY target/thymeleafdemo-0.0.1-SNAPSHOT.war /app

# Expose the port that your application will run on
EXPOSE 8080

# Define environment variable
ENV SPRING_DATASOURCE_URL=jdbc:mysql://mysql-container:3306/employee_directory
ENV SPRING_DATASOURCE_USERNAME=root
ENV SPRING_DATASOURCE_PASSWORD=Kishore@1403

# Run your application using java -jar
CMD ["java", "-jar", "thymeleafdemo-0.0.1-SNAPSHOT.war"]
