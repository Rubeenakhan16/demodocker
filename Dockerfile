# Use the official Nginx image as a base image
FROM nginx:latest

# Copy the nginx.conf file to the /etc/nginx/ directory in the image
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static content to the default Nginx web root directory


# Expose the default Nginx port
EXPOSE 80

# Define the command to start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
