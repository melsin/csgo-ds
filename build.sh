#!/bin/sh

docker build -t steamcmd dockerfiles/steamcmd
docker build -t srcds-csgo dockerfiles/csgo-ds
docker build -t metamod-csgo dockerfiles/metamod
docker build -t sourcemod-csgo dockerfiles/sourcemod
docker build -t retakes dockerfiles/retakes
