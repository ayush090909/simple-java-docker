# Base image
FROM eclipse-temurin:17-jdk

# Create a non-root user
RUN useradd -m appuser

# Set working directory
WORKDIR /app

# Add fake test credentials (will be detected by TruffleHog)
RUN echo "# Fake AWS Key (for TruffleHog testing)" >> /app/test_creds.txt && \
    echo "AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE" >> /app/test_creds.txt && \
    echo "AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY" >> /app/test_creds.txt && \
    echo "# Fake GitHub Token" >> /app/test_creds.txt && \
    echo "GH_TOKEN=ghp_AbCdEfGhIjKlMnOpQrStUvWxYz0123456789" >> /app/test_creds.txt && \
    echo "# Fake Slack Webhook" >> /app/test_creds.txt && \
    echo "SLACK_WEBHOOK=https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX" >> /app/test_creds.txt

# Copy real application files (use .dockerignore to exclude sensitive files)
COPY . .

# Switch to non-root user
USER appuser

# Healthcheck
HEALTHCHECK CMD java -version || exit 1

# Run command
CMD ["java", "-version"]
