#!/bin/bash

if [[ "$Battery" -le 79 ]]
then

twmnc -c  'Battery Low'
 
fi
