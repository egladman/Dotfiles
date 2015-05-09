#!/bin/bash


BAT=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)


if [ "$BAT" -eq 20 ]; then
twmnc -c  'Battery Low' 
fi


if [ "$BAT" -eq 5 ]; then
twmnc -c  'Battery Critical'
fi


if [ "$BAT" -eq 100 ] || [ "$STATUS" -eq "Charging" ]; then
twmnc -c  'Battery Fully Charged'
fi

