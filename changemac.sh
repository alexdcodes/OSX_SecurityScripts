printf ""
printf "" 
printf ""
printf ""
printf "Display Network Interfaces:\n\n"
printf "Default MAC: \n"
ifconfig en0 | grep ether # one of these will return a MAC address that matches
ifconfig gif0 | grep ether # the value you saw when looking for your current
ifconfig utun0 | grep ether # mac address.
ifconfig wlan0 | grep ether
printf ""
printf ""
printf "Generated MAC Addresses:\n"
printf "\n"
openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'
openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'
openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'
printf "\n"
read -p "Enter Mac Address: " a1
sudo ifconfig en0 ether $a1  
