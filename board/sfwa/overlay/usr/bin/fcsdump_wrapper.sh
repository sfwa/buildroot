#!/bin/sh
#

while [ 1 ]
do
    start-stop-daemon -x fcsdump -Sb -- /mnt/sdcard/log
    sleep 1
done
