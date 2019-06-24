#!/usr/bin/env bash

# Signal trapping.

handle_term()
{
   echo "signal received, hello-world exiting."
   exit 0
}

trap 'handle_term' TERM

# =============================================================================
# Main
# =============================================================================

echo "Hello world at " $(date)

# Sleep cycle in a manner that allows "docker stop ..." to shutdown gracefully.

while sleep ${SLEEP_TIME:-300};
  do
    echo "Hello world at" $(date)
  done &

wait
