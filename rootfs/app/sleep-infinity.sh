#!/usr/bin/env bash

# Signal trapping.

handle_term()
{
   echo "signal received, sleep-infinity exiting."
   exit 0
}

trap 'handle_term' TERM

# =============================================================================
# Main
# =============================================================================

echo "/app/sleep-infinitely.sh is sleeping infinitely."

# Sleep in a manner that allows "docker stop ..." to shutdown gracefully.
# 60 sec * 60 min * 24 hours * 365 days = 31536000 seconds

sleep 31536000 &
wait
