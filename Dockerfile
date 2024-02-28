# Dockerfile
FROM alpine:3.14

# Install OpenJDK 11
RUN apk --no-cache add openjdk11-jre  && rm -rf /var/cache/apk/*

WORKDIR /app

COPY target/spring-boot-web.jar /app

EXPOSE 8080

CMD ["java", "-jar", "spring-boot-web.jar"]