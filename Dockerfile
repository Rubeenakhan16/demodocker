# Use an official Tomcat runtime as a parent image
FROM tomcat:8.0.18-jre8

# Copy the local maven-web-application.war file to the webapps directory in the container
COPY target/maven-web-application.war /usr/local/tomcat/webapps/

# Expose port 8080 to the outside world
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]

