FROM ubuntu:bionic

RUN apt-get update && apt-get install -y curl lib32gcc1 && \
    curl -o /tmp/steamcmd_linux.tar.gz https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz && \
    mkdir -p /apps/steam/ && \
    tar zxf /tmp/steamcmd_linux.tar.gz -C /apps/steam/ && \
    sed -i 's#^STEAMROOT=.*$#STEAMROOT=/apps/steam#g' /apps/steam/steamcmd.sh && \ 
    /apps/steam/steamcmd.sh +quit

ENV STEAMCMD_BIN /apps/steam/steamcmd.sh

CMD  ["/apps/steam/steamcmd.sh"]
