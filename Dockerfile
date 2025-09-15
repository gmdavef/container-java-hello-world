FROM alpine:latest

ADD HelloWorld.class HelloWorld.class

RUN apk --update --no-check-certificate add openjdk21-jre

# Sneaking in some Java malware 
# ADD strrat-malware.zip harmless.zip

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "HelloWorld"]
