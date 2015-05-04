#!/bin/bash

remainingBattery='cat /sys/class/power_supply/BAT0/charge_now'

totalBattery='cat /sys/class/power_supply/BAT0/charge_full'

presentBattery='echo $remainingBattery`

echo $presentBattery