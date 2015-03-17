# Minecraft Docker container

A Dockerized version of the vanilla Minecraft server.

## Building

```
$ git clone https://github.com/floriandejonckheere/docker-minecraft
$ cd docker-minecraft
$ docker build -t floriand/docker .
```

## Running

```
$ mkdir data	# The directory for the data files
$ docker run -d --name minecraft -v $(pwd)/data:/data -p 0.0.0.0:25565:25565 floriand/minecraft
```

Run `docker stop` and `docker start` to stop and start the minecraft server. The `version.txt` file in the data volume contains the Minecraft server version.

Disclaimer: By using this container you automatically accept the Mojang EULA.
