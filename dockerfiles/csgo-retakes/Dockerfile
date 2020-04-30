FROM csgo-sourcemod:latest

RUN apt-get -y update && \
    apt-get install -y unzip && \
    curl -L -O https://github.com/splewis/csgo-retakes/releases/download/v0.3.4/retakes_0.3.4.zip && \
    unzip retakes_0.3.4.zip -d $SRCDS_HOME/csgo && \
    rm retakes_0.3.4.zip && \
    mv /apps/srcds/csgo/addons/sourcemod/plugins/disabled/retakes_standardallocator.smx /apps/srcds/csgo/addons/sourcemod/plugins/
