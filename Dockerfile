ARG BASE_IMAGE=alpine:latest
FROM ${BASE_IMAGE}

ENV REFRESHED_AT=2019-05-01

LABEL Name="senzing/template" \
      Maintainer="support@senzing.com" \
      Version="1.0.0"

HEALTHCHECK CMD ["/app/healthcheck.sh"]

# Install packages via apt.

# Copy files from repository.

COPY ./rootfs /

RUN apk add --no-cache bash

ENV SLEEP_TIME=300

# Runtime execution.

CMD ["/app/alpine-sleep-infinity.sh"]
