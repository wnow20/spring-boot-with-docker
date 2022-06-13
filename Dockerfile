FROM openjdk:17-jdk-alpine
EXPOSE 8080

RUN adduser -S admin -G root

ARG APPNAME
ENV APPNAME=${APPNAME}

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

USER admin:root
COPY build/libs/${APPNAME}.jar /home/admin/${APPNAME}.jar

WORKDIR /home/admin
ENTRYPOINT java -jar /home/admin/${APPNAME}.jar