FROM openjdk:8-jdk-alpine
ARG JAR_FILE=build/libs/*.war
COPY build/libs/*.war app.war
ENTRYPOINT ["java","-jar","/app.war"]