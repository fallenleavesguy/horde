#!/bin/bash

localInstallDir="/root/"
localHordeDir=$localInstallDir"horde/"
localMapsDir=$localHordeDir"maps/"
mapsLocalFolder="/home/steam/pavlovserver/Pavlov/Saved/maps/"

echo "Updating Maps..."
rclone sync :s3,endpoint=ewr1.vultrobjects.com:hordemaps/ $mapsLocalFolder
chmod +rx -R $mapsLocalFolder
