# Production Dockerfile for School Hire Management System
FROM tomcat:9.0-jdk17-temurin

# Remove default Tomcat web applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Set up build directory
WORKDIR /app

# Copy web files and source code
COPY web/ /usr/local/tomcat/webapps/ROOT/
COPY src/ /app/src/

# Compile Java classes into WEB-INF/classes
RUN mkdir -p /usr/local/tomcat/webapps/ROOT/WEB-INF/classes && \
    javac -encoding UTF-8 \
          -cp "/usr/local/tomcat/lib/*:/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/*" \
          -d /usr/local/tomcat/webapps/ROOT/WEB-INF/classes \
          src/java/config/*.java \
          src/java/dto/*.java \
          src/java/dao/*.java

# Clean build directory
RUN rm -rf /app

# Expose standard web port
EXPOSE 8080

# Run Tomcat in foreground
CMD ["catalina.sh", "run"]
