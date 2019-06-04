# dsmr-to-mqtt
A bash script to read serial DSMR (dutch smart meter) data and publish it to an MQTT broker

Prerequisites:<br>
-Smart energy meter with P1 port<br>
-UART TTL RJ11 USB cable<br>
-Linux (any flavor & platform)<br>
-mosquitto-clients package (debian & ubuntu)<br>

Variables:<br>
-mqtt_broker //IP address or hostname of your MQTT broker<br>
-user //Username of your MQTT broker<br>
-pass //Password of your MQTT broker<br>
-main_topic // e.g. if you enter dsmr the topic look like dsmr/<readings><br>
-device //Serial device probably /dev/ttyUSB0<br>
-baudrate //Baud rate of the serial device (9600 for DSMR 2.2 & 115200 for DSMR 4.0)

Instructions:<br>
-Download dsmrmqtt.sh to your linux computer<br>
-Edit the file and enter your variables where specified<br>
-Type "chmod 755 dsmrmqtt.sh" to be able to execute the file<br>
-Type "./dsmrmqtt.sh" and enjoy!<br>

TIP: To start the script at bootup place this command in the /etc/rc.local file "screen -dmS dsmr /foo/bar/dsmrmqtt.sh"
