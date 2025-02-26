#!/bin/bash

status=$(cat /sys/class/power_supply/BAT0/status)

percentage=$(cat /sys/class/power_supply/BAT0/capacity)

bat_color="#4FF1FC"   
percentage_color="#FF4EFF" 

output="%{F$bat_color}󰁹 : %{F-}%{F$percentage_color}${percentage}%%{F-}"

echo "$output"
