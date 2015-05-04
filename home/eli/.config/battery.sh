#!/bin/bash

if [[ "$Battery" -le 20 ]]
then

twmnc -c  'Battery Low'
 
fi
