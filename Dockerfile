FROM eclipse-temurin:11-jdk-jammy

WORKDIR /app

# Instead of hard-coded jar name, use wildcard:
COPY target/*.jar app.jar

EXPOSE 9090

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]
