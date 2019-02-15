# docker-hello-world

## Overview

The `senzing/hello-world` docker image prints

```console
Hello world at Day Mon dd hh:mm:ss UTC yyyy
Hello world at Day Mon dd hh:mm:ss UTC yyyy
 :
```

to STDOUT at an interval defined by `SLEEP_TIME` in seconds.
Default: 300 seconds (5 minutes).

This minimal docker image is used for testing docker formations in products like
Docker-compose, Kubernetes, Rancher, etc.

### Contents

1. [Create Docker container](#create-docker-container)
1. [Run Docker container](#run-docker-container)

## Create docker container

```console
docker build --tag senzing/hello-world https://github.com/senzing/docker-hello-world.git
```

## Run Docker container

1. Create the docker container.

    ```console
    docker run -it  \
      senzing/hello-world
    ```

1. Create the docker container.

    ```console
    docker run -it  \
      --env SLEEP_TIME=30 \
      senzing/hello-world
    ```

## Push to hub.docker.com

Add / Update docker images on [hub.docker.com/u/senzing](https://hub.docker.com/u/senzing).

1. Push latest

    ```console
    sudo docker tag senzing/hello-world senzing/hello-world-on-hub-docker-com
    sudo docker push senzing/hello-world-on-hub-docker-com
    ```

1. Push version

    ```console
    export DOCKER_VERSION=1.0.0

    sudo docker tag senzing/hello-world senzing/hello-world-on-hub-docker-com:${DOCKER_VERSION}
    sudo docker push senzing/hello-world-on-hub-docker-com:${DOCKER_VERSION}
    ```
