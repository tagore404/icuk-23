FROM eclipse-temurin:11-jdk-jammy

WORKDIR /app

# Use wildcard so it works for all JAR names
COPY target/*.jar app.jar

EXPOSE 9090

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]
