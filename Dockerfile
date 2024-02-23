# Dockerfile
FROM alpine:latest

# Install OpenJDK 11
RUN apk --no-cache add openjdk11-jre

WORKDIR /app

COPY target/spring-boot-web.jar /app

EXPOSE 8080

CMD ["java", "-jar", "spring-boot-web.jar"]