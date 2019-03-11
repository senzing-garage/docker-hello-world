ARG BASE_IMAGE=alpine:latest
FROM ${BASE_IMAGE}

RUN apk add --no-cache bash

ENV SLEEP_TIME=300

CMD  while true; do echo 'Hello world at' $(date); sleep ${SLEEP_TIME}; done
