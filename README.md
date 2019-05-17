# dind
Docker in Docker image with ssh connection

## Credentials
Default credentials are root:root

## Build
```sh
docker build -f amd64.dockerfile -t docker-registry.wayproyect.com/dind:amd64 .
docker build -f arm32v7.dockerfile -t docker-registry.wayproyect.com/dind:arm .
```
## Push
```sh
docker push docker-registry.wayproyect.com/dind:arm
docker push docker-registry.wayproyect.com/dind:amd64
```

## Manifest
```sh
docker manifest create
    docker-registry.wayproyect.com/dind
    docker-registry.wayproyect.com/dind:amd64
    docker-registry.wayproyect.com/dind:arm
```

