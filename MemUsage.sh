# !/bin/bash

SleepTime_sec=${1:-5}

MemRaw=$(top -n 1 | grep "KiB Mem")

Used_MiB=$(echo $MemRaw | awk '{print ($8)/1024}')
Used_perc=$(echo $MemRaw | awk '{print ($8/$4)}')

if [ "$MemRaw" = "" ]
then
    MemRaw=$(free | grep "Mem")
    Used_MiB=$(echo $MemRaw | awk '{print $3/1024}')
    Used_perc=$(echo $MemRaw | awk '{print $3/$2}')
fi

echo $(echo "$Used_MiB $Used_perc" | awk '{printf "%3.1f GiB (%3.1f %c)", $1/1024, $2*100, "%"}')

# echo $Used_MiB 
# echo $Used_perc

sleep $SleepTime_sec
