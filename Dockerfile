# Dockerfile
FROM alpine:latest

# Install OpenJDK 11
RUN apk --no-cache add openjdk11-jre

# Update packages and install the latest version of bash (if it's installed)
RUN apt-get update && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY target/spring-boot-web.jar /app

EXPOSE 8080

CMD ["java", "-jar", "spring-boot-web.jar"]