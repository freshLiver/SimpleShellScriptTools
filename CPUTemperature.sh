# apt-get install lm-sensors
sensors | grep "Package" | sed -r "s/\+//g" | awk '{printf "%s\n", $4}'
sleep 5
