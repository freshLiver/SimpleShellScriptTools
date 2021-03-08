interval=1

stat=$(xset q | grep "00: C" | sed -r "s/ {2,}/ /g" | awk '{print $4, $8}')

Caps_off="Ⓐ"
Caps_on="🅐"

Num_off="①"
Num_on="❶"

if [ "$stat" = "off off" ]
then
    echo "| $Caps_off | $Num_off |"

elif [ "$stat" = "off on" ]
then
    echo "| $Caps_off | $Num_on |"

elif [ "$stat" = "on off" ]
then
    echo "| $Caps_on | $Num_off |"

elif [ "$stat" = "on on" ]
then
    echo "| $Caps_on | $Num_on |"
    
else
    echo "XXXXXXXX"
fi

sleep $interval
