FROM java:8
MAINTAINER Gladys
ADD spring-1.0-SNAPSHOT.jar  app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT [ "java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar" ]
