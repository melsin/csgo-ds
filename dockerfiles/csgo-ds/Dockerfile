FROM steamcmd:latest

ENV SRCDS_HOME /apps/srcds

RUN  apt-get update && \
     apt-get install -y lib32stdc++6 

RUN  $STEAMCMD_BIN \
       +force_install_dir $SRCDS_HOME/ \
       +login anonymous \
       +app_update 740 validate \
       +quit

CMD [ "$SRCDS_HOME/srcds_run", \
        "-game", "csgo", \
        "-console", \
        "-usercon", \
        "+game_type", "0", \
        "+mapgroup", "mg_casualdelta", \
        "+map", "de_inferno" ]
