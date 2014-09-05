#!/bin/sh
#

while [ 1 ]
do
    start-stop-daemon -x imagecapture -Sb -- /mnt/sdcard/log
    sleep 1
done
