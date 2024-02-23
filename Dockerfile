# Dockerfile
FROM openjdk:11-jre-slim

# Update packages and install the latest version of bash (if it's installed)
RUN apt-get update && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY target/spring-boot-web.jar /app

EXPOSE 8080

CMD ["java", "-jar", "spring-boot-web.jar"]