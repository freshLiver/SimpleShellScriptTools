# apt-get install ifstat

# get TOTAL field (row 3, last 2 columns) from ifstat
raw=$(ifstat -T 1s 1 | awk 'NR==3 {print $(NF-1), $(NF)}')

index=0
upload=""
download=""
value=""

for num in $raw 
do
    # KB or MB
    if [ "$(echo $num'>'1024 | bc -l)" = "1" ]
    then
        value="$(echo "$num 1024" | awk '{printf("%.2f", $1/$2)}' ) MB/s"
    else
        value="$num KB/s"
    fi

    # assign value to download or update
    if [ "$index" = "0" ]
    then
        download=$value
    else
        upload=$value
    fi

    # ++index
    index=$(expr $index + 1)

done

echo " ▼ $download | ▲ $upload "
