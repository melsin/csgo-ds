#!/bin/sh

## Metamod Source
mkdir -p dockerfiles/metamod/assets
curl -o dockerfiles/metamod/assets/mmsource-1.11.0-git1130-linux.tar.gz https://mms.alliedmods.net/mmsdrop/1.11/mmsource-1.11.0-git1130-linux.tar.gz

## SourceMod
mkdir -p dockerfiles/sourcemod/assets
curl -o dockerfiles/sourcemod/assets/sourcemod-1.11.0-git6526-linux.tar.gz https://sm.alliedmods.net/smdrop/1.11/sourcemod-1.11.0-git6526-linux.tar.gz

## Retake SourceMod plugin
mkdir -p dockerfiles/retake/assets
curl -L -o dockerfiles/retake/assets/retakes_0.3.4.zip https://github.com/splewis/csgo-retakes/releases/download/v0.3.4/retakes_0.3.4.zip
mkdir dockerfiles/retake/assets/unpack
unzip -q dockerfiles/retake/assets/retakes_0.3.4.zip -d dockerfiles/retake/assets/unpack
cd dockerfiles/retake/assets/unpack
tar -czf retakes_0.3.4.tar.gz *
mv retakes_0.3.4.tar.gz ../
cd ../../../../
rm -r dockerfiles/retake/assets/unpack

