# docker-hello-world

## Overview

The `senzing/hello-world`
and [senzing/hello-world-on-hub-docker-com](https://hub.docker.com/r/senzing/hello-world-on-hub-docker-com)
docker images print:

```console
Hello world at Day Mon dd hh:mm:ss UTC yyyy
Hello world at Day Mon dd hh:mm:ss UTC yyyy
 :
```

to STDOUT at an interval defined by `SENZING_SLEEP_TIME` in seconds.
Default: 600 seconds (10 minutes).

This minimal docker image is used for testing docker formations in products like
Docker-compose, Kubernetes, Rancher, etc.

It can be used to compare behavior of local docker registry/repository with DockerHub.

1. `senzing/hello-world`
   is not on DockerHub.
   It must be built locally.
1. `senzing/hello-world-on-hub-docker-com`
   is on [DockerHub](https://hub.docker.com/r/senzing/hello-world-on-hub-docker-com)
   and will be pulled automatically.

### Related artifacts

1. [DockerHub](https://hub.docker.com/r/senzing/hello-world-on-hub-docker-com)
1. Helm charts:
    1. [senzing-hello-world-on-hub-docker-com](https://github.com/Senzing/charts/tree/master/charts/senzing-hello-world-on-hub-docker-com)
    1. [senzing-hello-world](https://github.com/Senzing/charts/tree/master/charts/senzing-hello-world)

### Contents

1. [Build local docker image](#build-local-docker-image)
1. [Run Docker container from local image](#run-docker-container-from-local-image)
1. [Run Docker container from DockerHub image](#run-docker-container-from-dockerhub-image)

## Build local docker image

1. Build image.
   Example:

    ```console
    sudo docker build \
      --tag senzing/hello-world \
      https://github.com/senzing/docker-hello-world.git
    ```

## Configuration

* **SENZING_SLEEP_TIME** -
  Amount of time to sleep, in seconds for `hello-world.sh`.
  Default: 600 (10 minutes).

## Run Docker container from local image

1. Run the docker container.
   Example:

    ```console
    sudo docker run \
      senzing/hello-world
    ```

1. Run the docker container with `SLEEP_TIME`.
   Example:

    ```console
    sudo docker run \
      --env SENZING_SLEEP_TIME=30 \
      senzing/hello-world
    ```

## Run Docker container from DockerHub image

1. Run the docker container.
   Example:

    ```console
    sudo docker run \
      senzing/hello-world-on-hub-docker-com
    ```
