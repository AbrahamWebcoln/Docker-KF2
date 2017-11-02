FROM ubuntu:xenial

RUN apt-get -y update && \
    apt-get -y install lib32gcc1 curl

RUN useradd -m steam
WORKDIR /home/steam
USER steam

RUN mkdir Steam && \
    cd Steam && \
    curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -

RUN /home/steam/Steam/steamcmd.sh +login anonymous +app_update 232130 +exit && \
    mkdir -p /home/steam/Steam/steamapps/common/killingfloor2/KFGame/Cache

CMD /home/steam/Steam/steamapps/common/killingfloor2/Binaries/Win64/KFGameSteamServer.bin.x86_64 kf-bioticslab