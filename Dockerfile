# Use the official Tomcat base image
FROM tomcat:latest

COPY target/javaservlet-1.0-SNAPSHOT.war usr/local/tomcat/webapps/
# Optionally, you can copy additional files or configurations
# COPY some-config-file.txt /path/in/container/

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat using catalina.sh script
CMD ["catalina.sh", "run"]
