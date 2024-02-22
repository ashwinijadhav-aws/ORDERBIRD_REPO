# Dockerfile
FROM openjdk:11-jre-slim

WORKDIR /app

COPY target/spring-boot-web.jar /app

EXPOSE 8080

CMD ["java", "-jar", "spring-boot-web.jar"]