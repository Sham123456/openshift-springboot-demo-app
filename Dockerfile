FROM openjdk:8-jdk-alpine
ARG JAR_FILE=build/libs/*.war
COPY build/libs/*.war /tmp/
WORKDIR /tmp
ENTRYPOINT ["find","-name","*.war","-exec", "java", "-jar", "'{}'", "\;"]