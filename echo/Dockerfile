# Use the official Go image as the base image
FROM golang:latest

# Set the working directory in the container
WORKDIR /app

# Copy the Go API source code into the container
COPY . .

# Build the Go application
RUN go build -o main

# Expose port 8080 for the API
EXPOSE 8080

# Command to run the Go application
CMD ["./main"]
