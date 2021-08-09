FROM ghcr.io/linuxserver/webtop:alpine-openbox

RUN \
 echo "**** install packages ****" && \
 apk add --no-cache \
    openjdk11 && \
 echo "**** cleanup ****" && \
 rm -rf \
    /tmp/*

RUN wget -P /usr/local/bin https://github.com/runelite/launcher/releases/download/2.1.5/RuneLite.jar
RUN chmod 777 /usr/local/bin/RuneLite.jar

# add local files
COPY /root /

# ports and volumes
EXPOSE 3000
VOLUME /config
