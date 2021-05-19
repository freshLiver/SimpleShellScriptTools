# apt-get install lm-sensors
SleepTime_sec=${1:-5}
sensors | grep "Package" | sed -r "s/\+//g" | awk '{printf "%s\n", $4}'
sleep $SleepTime_sec
