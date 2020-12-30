top -b -n 1 | awk 'NR==3 {printf "%4.1f%\n", 100-$8}'
