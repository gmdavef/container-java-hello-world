FROM alpine:latest

ADD HelloWorld.class HelloWorld.class

RUN apk --update add openjdk17-jre

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "HelloWorld"]
