#! /bin/bash

LED3_PATH=/sys/class/leds/beaglebone:green:usr3

function removeTrigger
{
echo "none" >> "$LED3_PATH/trigger"
}


echo "Starting the LED Bash Script"
if [ $# != 1 ]; then
	echo "Error: There is an incorrect number of arguments. Try:"
	echo -e "\nbashLED [argument]\n\nwhere command is:"
	echo -e "on, off, blink or status\n\ne.g. bashLED on"
	exit 2
fi
echo "The argument passed is: $1"
if  [ "$1" == "on" ]; then
	echo "LED on"
	removeTrigger
	echo "1" >> "$LED3_PATH/brightness"
fi