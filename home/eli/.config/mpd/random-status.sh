#!/bin/bash

RANDOM_ON=$(mpc | grep -o 'random: on')
RANDOM_OFF=$(mpc | grep -o 'random: off')

if [ "$RANDOM_ON" = "random: on" ]; then
twmnc -c  'Random Enabled'
fi

if [ "$RANDOM_OFF" = "random: off" ]; then
twmnc -c  'Random Disabled'
fi

