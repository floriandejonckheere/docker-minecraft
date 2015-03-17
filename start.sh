#!/bin/bash
#
# start.sh - start Minecraft server
#

cd /data
echo "eula=true" > eula.txt
echo "${MCVER}" > version.txt
java -Xmx1024M -Xms1024M -jar /app/minecraft_server.${MCVER}.jar nogui
