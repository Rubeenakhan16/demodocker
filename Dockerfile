# Use the official Nginx base image
FROM nginx:latest

# Copy custom configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static content to the default Nginx web root directory
COPY static-content /usr/share/nginx/html

# Expose the default Nginx port
EXPOSE 80

# Define the command to start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
