#!/bin/bash

echo -e "\e[32m System-information \e[0m"

echo -e "\e[32m ---------------------X--------------------- \e[0m"

sleep 1
ping -c 1 -w 5 google.com &>  \dev\null && int="conected" || int="Disconnected"

echo -e "\e[32m Internet :\e[0m" "\e[31m $int\e[0m"
sleep 1

os=$(uname -o)

echo -e "\e[32m Operating-system :\e[0m" "\e[31m $os\e[0m"
sleep 1

type=$(dmidecode -s system-manufacturer) 

echo -e "\e[32m System-type :\e[0m" "\e[31m $type\e[0m"
sleep 1
ip=$(hostname -I)
echo -e "\e[32m IP-address :\e[0m" "\e[31m $ip\e[0m"

sleep 1

echo -e "\e[32m ---------------------X--------------------- \e[0m"

