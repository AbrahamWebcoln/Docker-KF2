# kf2-docker
###### A Docker setup for hosting Killing Floor 2 servers on Linux through SteamCmd

There are some repositories with similar configurations available, but none fully took advantage of docker features such as volumes, and ran mostly through Wine.

This setup will also mount `...KFGame/Config` on the source folder in order to allow easy access to the server's configuration files.

## Requirements
* 2 GB RAM
* 30 GB Storage Space (SSD Recommended)
* Docker
* Docker Compose

## Starting up
Run `docker-compose up -d` on the command line to start the container. The initial setup will take some time depending on the connection speed.

You can also use `docker logs kf2docker_kf2-server_1 --tail 10` to check the last 10 lines of the log.

## Port Mapping
The port mapping can easily be changed by changing the `docker-compose.yml` file.

The syntax is `HOST:CONTAINER/PROTOCOL`.

### Example: Changing the web admin port
This will change the web admin port from 8080 to 53292.

```"8080:8080/tcp" ->  "53292:8080/tcp"```