FROM openjdk:8
EXPOSE 8080
ADD target/Rest-Services.jar Rest-Services.jar
ENTRYPOINT["java", "-jar", "/Rest-Services.jar"]