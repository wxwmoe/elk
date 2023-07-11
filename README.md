# Elk
Elk fork used on wxw.moe

#### Steps for usage (example)

In `docker_build/elk` folder:

1. Clone elk code <br>`git clone https://github.com/elk-zone/elk.git .`
2. Copy `update.sh` `build.sh` script to the folder
3. Set script permission `chmod +x update.sh build.sh`
4. Run `./update.sh`
5. Run `./build.sh`

In `docker_data/elk` folder:

5. Modify `docker-compose.yaml`
6. Start elk server `docker-compose up -d`

#### docker-compose.yaml (example)

```yaml
services:
  elk:
    restart: always
    image: wxwmoe/elk:wxwmoe
    volumes:
      - './elk-storage:/elk/data'
    network_mode: "host"
    logging:
      driver: "json-file"
      options:
        max-size: "100m"
```

Tips: Set storage dir permissions before starting

```shell
mkdir elk-storage
chown 911:911 ./elk-storage
```