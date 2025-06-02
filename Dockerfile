# Use a cross-platform compatible JDK
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy your app's jar or source files
COPY . .

# Compile/run/build command as needed
CMD ["java", "-version"]
