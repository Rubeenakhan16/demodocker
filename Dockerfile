# Use an official Tomcat runtime as a parent image
FROM tomcat:8.0.18-jre8

# Set the working directory to the Tomcat webapps directory
WORKDIR /usr/local/tomcat/webapps

# Copy the local maven-web-application.war file to the container at the specified location
COPY target/maven-web-application.war .

# Expose port 8080 to the outside world
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
