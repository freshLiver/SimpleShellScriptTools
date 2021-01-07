MemRaw=$(top -n 1 | grep "KiB Mem")

Used_MiB=$(echo $MemRaw | awk '{print ($8)/1024}')
Used_perc=$(echo $MemRaw | awk '{print ($8/$4)}')

# echo $Used_MiB 
# echo $Used_perc

echo $(echo "$Used_MiB $Used_perc" | awk '{printf "%3.1f GiB (%3.1f %c)", $1/1024, $2*100, "%"}')
