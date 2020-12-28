FROM openjdk:8-jdk-alpine
ARG JAR_FILE=build/libs/*.war
COPY build/libs/*.war /opt/
COPY shell/run.sh /opt/
WORKDIR /opt
RUN chmod +x /opt/run.sh
ENTRYPOINT ["sh","/opt/run.sh"]