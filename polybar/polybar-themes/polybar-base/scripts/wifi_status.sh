ip a | grep "inet " | awk '{print $2}'
status = ping -q -w1 -c1 google.com &>/dev/null && echo online || echo offline