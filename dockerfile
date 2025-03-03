# Use an official Tomcat base image
FROM tomcat:9-jdk17-openjdk-slim

# Remove the default web apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file from the Jenkins build
COPY webapp.war /usr/local/tomcat/webapps/

# Expose port 80 for the web server
EXPOSE 80

# Run the Tomcat server
CMD ["catalina.sh", "run"]
