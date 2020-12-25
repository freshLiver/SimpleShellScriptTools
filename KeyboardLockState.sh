stat=$(xset q | grep "00: C" | sed -r "s/ {2,}/ /g" | awk '{print $4, $8}')

if [ "$stat" = "off off" ]
then
    echo "|   |   |"

elif [ "$stat" = "off on" ]
then
    echo "|   | 1 |"

elif [ "$stat" = "on off" ]
then
    echo "| A |   |"

elif [ "$stat" = "on on" ]
then
    echo "| A | 1 |"
    
else
    echo "XXXXXXXX"
fi