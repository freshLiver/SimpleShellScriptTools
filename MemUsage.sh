MemRaw=$(free -m | sed "s/ +/ /g" | awk 'NR==2')

Used_MiB=$(echo $MemRaw | awk '{print $2-$7}')
Used_perc=$(echo $MemRaw | awk '{print 1-($7/$2)}')

# echo $Used_MiB 
# echo $Used_perc

echo $(echo "$Used_MiB $Used_perc" | awk '{printf "%3.1f GiB (%3.1f%)" , $1/1024, $2*100}')
