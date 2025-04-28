# Step 1: Use a base image with Java
FROM openjdk:17-jdk-slim

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy compiled class file
COPY Main.class /app/

# Step 4: Run the Java class
CMD ["java", "Main"]


