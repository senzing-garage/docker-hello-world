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

It can be used to compare behavior of local docker registry/repository with DockerHub.

1. `senzing/hello-world`
   is not on DockerHub.
   It must be built locally.
1. `senzing/hello-world-on-hub-docker-com`
   is on Docker and will be pulled automatically.

### Contents

1. [Create local docker image](#create-local-docker-image)
1. [Run Docker container from local image](#run-docker-container-from-local-image)
1. [Run Docker container from DockerHub image](#run-docker-container-from-dockerhub-image)

## Create local docker image

```console
sudo docker build \
  --tag senzing/hello-world \
  https://github.com/senzing/docker-hello-world.git
```

## Run Docker container from local image

1. Create the docker container.

    ```console
    sudo docker run \
      -it  \
      senzing/hello-world
    ```

1. Create the docker container.

    ```console
    sudo docker run \
      -it  \
      --env SLEEP_TIME=30 \
      senzing/hello-world
    ```

## Run Docker container from DockerHub image

1. Create the docker container.

    ```console
    sudo docker run \
      -it  \
      senzing/hello-world-on-hub-docker-com
    ```
