#!/bin/bash

PAUSE=$(mpc | grep -o paused)
PLAY=$(mpc | grep -o playing)

if [ "$PAUSE" = "paused" ]; then
twmnc -c  'Paused'
fi

if [ "$PLAY" = "playing" ]; then
twmnc -c  'Playback Resumed'
fi

