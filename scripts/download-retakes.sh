#!/bin/sh

## Retake SourceMod plugin
mkdir -p dockerfiles/retakes/assets
curl -L -o dockerfiles/retakes/assets/retakes_0.3.4.zip https://github.com/splewis/csgo-retakes/releases/download/v0.3.4/retakes_0.3.4.zip
mkdir dockerfiles/retakes/assets/unpack
unzip -q dockerfiles/retakes/assets/retakes_0.3.4.zip -d dockerfiles/retakes/assets/unpack
cd dockerfiles/retakes/assets/unpack
tar -czf retakes_0.3.4.tar.gz *
mv retakes_0.3.4.tar.gz ../
cd ../../../../
rm -r dockerfiles/retakes/assets/unpack
