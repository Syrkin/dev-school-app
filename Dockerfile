FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=build/libs/dev-school-app-1.0-SNAPSHOT.jar
ADD ${JAR_FILE} dev-school-app.jar
ENTRYPOINT ["java","-jar","/dev-school-app.jar"]