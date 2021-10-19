FROM alpine

RUN \
 echo "**** install packages ****" && \
 apk add --no-cache \
    openjdk11-jre && \
 echo "**** cleanup ****" && \
 rm -rf \
    /tmp/*

WORKDIR /root/
RUN wget https://github.com/runelite/launcher/releases/download/2.2.0/RuneLite.jar

CMD java -jar RuneLite.jar --mode=OFF && sleep infinity
