#!/bin/bash

mqtt_broker="<insert IP>"
user="<enter MQTT username"
pass="<enter MQTT password>"
main_topic="<enter MQTT main topic>"
device="<enter serial device>"

stty -F $device 115200

while read line
do 
a=$(echo $line | grep -e -0: -e -1: -e -3:)
if [[ -n $a ]]
then
topic=$(echo "$a" | cut -d"(" -f1)
value=$(echo "$a" | awk -F"[()]" 'NF&&/\(/{print $(NF-1)}' | cut -d"*" -f1)
if [[ -z $value ]]
then
value="n/a"
fi
mosquitto_pub -h $mqtt_broker -m $value -t $main_topic/$topic -u $user -P $pass &
fi
done <$device
