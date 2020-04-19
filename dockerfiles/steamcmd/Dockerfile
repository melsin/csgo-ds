FROM ubuntu:bionic AS build
RUN apt-get update && apt-get install -y curl && \
    curl -o /tmp/steamcmd_linux.tar.gz https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz && \
    tar zxf /tmp/steamcmd_linux.tar.gz -C /tmp

FROM ubuntu:bionic
COPY --from=build /tmp/steamcmd.sh /apps/steam/
COPY --from=build /tmp/linux32/ /apps/steam/linux32/
RUN  apt-get update && \
     apt-get install -y lib32gcc1 libcurl3
RUN  sed -i 's#^STEAMROOT=.*$#STEAMROOT=/apps/steam#g' /apps/steam/steamcmd.sh && \
     /apps/steam/steamcmd.sh +quit
CMD  ["/apps/steam/steamcmd.sh"]
