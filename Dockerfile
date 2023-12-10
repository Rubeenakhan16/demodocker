# Use an official Ubuntu image as a parent image
FROM ubuntu:latest

# Set the working directory inside the container
WORKDIR /app

# Copy a file from the host system to the container at the specified directory
COPY ./demo.txt .

# Expose a port to the outside world
EXPOSE 80

# Run a command when the container starts
CMD ["echo", "Hello, this is a demo!"]


