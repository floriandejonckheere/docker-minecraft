FROM java:openjdk-8-jre

MAINTAINER "Florian Dejonckheere <florian@floriandejonckheere.be>"

RUN mkdir /app /data
ENV MCVER 1.8.3

WORKDIR /app
RUN wget https://s3.amazonaws.com/Minecraft.Download/versions/${MCVER}/minecraft_server.${MCVER}.jar

ADD start.sh /app/start.sh

VOLUME /data

EXPOSE 25565

CMD ["/app/start.sh"]
