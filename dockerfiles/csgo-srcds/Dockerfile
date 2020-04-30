FROM steamcmd:latest

# Where do we want the game files to be saved
ENV SRCDS_HOME /apps/srcds

# Install the dependancies for running Counter-Strike: Global Offensive on Ubuntu
RUN  apt-get update && \
     apt-get install -y lib32stdc++6 

# Logon anonymously to Valve Steam CLI and download Counter-Strike: Global Offensive to $SRCDS_HOME
RUN  $STEAMCMD_BIN \
       +force_install_dir $SRCDS_HOME/ \
       +login anonymous \
       +app_update 740 validate \
       +quit
       
RUN curl -O https://raw.githubusercontent.com/melsin/csgo-ds/master/cfg/nade_king_prac_cfg.tar.gz && \
     tar zxf nade_king_prac_cfg.tar.gz -C $SRCDS_HOME/csgo/cfg && \
     rm nade_king_prac_cfg.tar.gz

CMD [ "$SRCDS_HOME/srcds_run", \
        "-game", "csgo", \
        "-console", \
        "-usercon", \
        "+game_type", "0", \
        "+mapgroup", "mg_casualdelta", \
        "+map", "de_inferno" ]
