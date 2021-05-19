SleepTime_sec=${1:-1}
sar -u 1 1 | awk 'NR==5 {printf "%4.1f %c\n", 100-$8, "%"}'
sleep SleepTime_sec
