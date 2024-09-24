# Use the official OpenJDK image as the base
FROM openjdk:11-jdk-slim

# Set environment variables for Tomcat
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
ENV TOMCAT_VERSION 10.1.30

# Install curl to download Tomcat
RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

# Download and install Tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-10/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    tar -xvzf apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    mv apache-tomcat-${TOMCAT_VERSION} $CATALINA_HOME && \
    rm apache-tomcat-${TOMCAT_VERSION}.tar.gz
    
# Expose Tomcat's default port
EXPOSE 8080

# Copy war file to tomcat server
COPY /var/lib/jenkins/workspace/ecommerecewithdocker/target/my-ecommerce-website-1.0-SNAPSHOT.war $CATALINA_HOME/webapps/ 

# Start Tomcat server
CMD ["catalina.sh", "run"]
