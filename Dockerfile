FROM runmymind/docker-android-sdk:alpine-standalone

RUN apk update && apk upgrade && \
    apk del openjdk11 glibc && \
    apk add gradle npm openjdk8 gcompat && \
    npm config set unsafe-perm true && \
    npm install -g cordova

ENV JAVA_HOME "/usr/lib/jvm/java-8-openjdk"

COPY entrypoint.sh /usr/src/entrypoint.sh

ENTRYPOINT ["/usr/src/entrypoint.sh"]
