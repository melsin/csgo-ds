FROM steamcmd:latest

RUN  apt-get update && \
     apt-get install -y lib32stdc++6  && \
     /apps/steam/steamcmd.sh \
       +force_install_dir /apps/steam/csgo-ds/ \
       +login anonymous \
       +app_update 740 validate \
       +quit

CMD [ "/apps/steam/csgo-ds/srcds_run", \
        "-game", "csgo", \
        "-console", \
        "-usercon", \
        "+game_type", "0" \
        "+mapgroup", "mg_casualdelta", \
        "+map", "de_inferno", \
     ]
