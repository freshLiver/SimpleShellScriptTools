free -m | sed "s/ +/ /g" | awk 'NR==2 {printf "RAM: %2.0f%\n", 100-($7/$2*100)}'
