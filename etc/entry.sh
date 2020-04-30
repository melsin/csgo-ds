#!/bin/bash

$SRCDS_HOME/srcds_run -game csgo -console -usercon -autoupdate \
        +game_type $SRCDS_GAMETYPE +mapgroup $SRCDS_MAPGROUP +map $SRCDS_MAP \
        +rcon_password $SRCDS_RCONPW +sv_setsteamaccount $SRCDS_TOKEN \
        $SRCDS_CMD