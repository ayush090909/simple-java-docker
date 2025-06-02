# Base image (still using 17-jdk, not 'latest')
FROM eclipse-temurin:17-jdk

# Create a non-root user
RUN useradd -m appuser

# Set working directory
WORKDIR /app

# Copy only needed files (make sure to use .dockerignore)
COPY . .

# Switch to non-root user
USER appuser

# Healthcheck (basic check – optional)
HEALTHCHECK CMD java -version || exit 1

# Run command (replace with your real entrypoint if needed)
CMD ["java", "-version"]
