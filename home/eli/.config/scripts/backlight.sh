#!/bin/bash

BRIGHTNESS=$(xbacklight -get)

if [ "$BRIGHTNESS" == "100.000000" ]; then
twmnc -c  'Max Brightness' 
fi


