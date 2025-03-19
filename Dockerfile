FROM alpine:latest

ADD HelloWorld.class HelloWorld.class

# ADD strrat-malware.zip harmless.zip

RUN apk --update add openjdk21-jre

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "HelloWorld"]
