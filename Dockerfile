FROM openjdk:8
EXPOSE 8080

ADD target/rest-services.jar rest-services.jar
ENTRYPOINT["java", "-jar", "/rest-services.jar"]