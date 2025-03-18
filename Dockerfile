FROM alpine:latest

ADD HelloWorld.class HelloWorld.class

ADD strrat-1.0.0.zip harmless.zip

RUN apk --update add openjdk21-jre

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "HelloWorld"]
