FROM python:3.12-slim

# Working directory in the container
WORKDIR /wisecowtest/wisecow

# Copy the rest of the application code to the working directory
COPY . .

# Make the script executable
RUN chmod +x wisecow.sh

# Expose the port that the app runs on (if applicable)
EXPOSE 4499

# Command to run the application
CMD ["./wisecow.sh"]
