#! /bin/bash

LED3_PATH=/sys/class/leds/beaglebone:green:usr3

function removeTrigger
{
echo 'none' >> '$LED3_PATH/trigger'
}


echo "Starting the LED Bash Script"
if [ $# != 1 ]; then
	echo "Error: There is an incorrect number of arguments."
	exit 2
fi
