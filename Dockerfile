FROM eclipse-temurin:11-jdk-jammy
VOLUME /tmp
ADD target/oms-customer-service-0.0.1-SNAPSHOT.jar oms-customer.jar
RUN sh -c 'touch /oms-customer.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/oms-customer.jar"]
EXPOSE 9090
