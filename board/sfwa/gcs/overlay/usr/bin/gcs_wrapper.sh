#!/bin/sh
#

while [ 1 ]
do
    start-stop-daemon -x gcs-server -p /var/run/gcs-server.pid -Sbm -- --debug --verbose -p 8080 --nmea /dev/ttyO2 --heightmap /usr/share/heightmaps/S38E145.hgt /dev/ttyO1 /dev/ttyO5 /root/mission.conf
    sleep 1
done
