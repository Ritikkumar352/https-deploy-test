# 1. DockerFile
# 2. Deploy backend test [HTTPS*]

# Setup
    a. create a .jar file  # ./mvnw clean package -DskipTests
    b. write DockerFile 
    c. build image using this .jar file  # dcoker build -t https-test-img 
    d. build and run container using this image

# 1. DockerFile
    a. FROM openjdk:17-jdk-alpine  # use a base img
    b. WORKDIR /app   # set working dir

    /  (root)
    │── app/
    │   ├── app.jar    # Your JAR file  
    │   ├── config/    # Your config folder (copied inside /app)
    │       ├── some-config-file.json
    │       ├── another-config.yaml

    c. COPY target/*.jar app.jar
    d. EXPOSE 8080
    e. ENTRYPOINT ["java","-jar","/app.jar"]  # "java" -> use jvm, "-jar" -> execute a jar file , "app.jar" -> jar file name to execute


# 2. Deploy on VM --> HTTPS


