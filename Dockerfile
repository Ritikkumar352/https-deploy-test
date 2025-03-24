#FROM ubuntu:latest
#LABEL authors="Ritik"


FROM openjdk:17-jdk-alpine

#all copied file will be inside this app folde-->
# /  (root)
# │── app/
# │   ├── app.jar    # Your JAR file
# │   ├── config/    # Your config folder (copied inside /app)
# │       ├── some-config-file.json
# │       ├── another-config.yaml
WORKDIR /app

#COPY target/Https-deploy-test-0.0.1-SNAPSHOT.jar
# rename .jar file -> app.jar
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]