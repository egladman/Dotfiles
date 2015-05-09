#!/bin/bash

REPEAT_ON=$(mpc | grep -o 'repeat: on')
REPEAT_OFF=$(mpc | grep -o 'repeat: off')

if [ "$REPEAT_ON" = "repeat: on" ]; then
twmnc -c  'Repeat Enabled'
fi

if [ "$REPEAT_OFF" = "repeat: off" ]; then
twmnc -c  'Repeat Disabled'
fi

