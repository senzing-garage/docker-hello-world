ARG BASE_CONTAINER=alpine:latest
FROM ${BASE_CONTAINER}

RUN apk add --no-cache bash

ENV SLEEP_TIME=300

CMD  while true; do echo 'Hello world at' $(date); sleep ${SLEEP_TIME}; done
