printf "\n\n\n"
printf "Change Macintosh Hostname Script\n\n"
printf ""
printf ""
printf " by a.diker\n" 
printf "[] [] [] [] [] [] [] [] [] [] [] [] []\n "
printf ""
read -p "Enter-New-Hostname:" a1
sudo scutil --set HostName $a1
sudo scutil --set LocalHostName $a1
sudo scutil --set ComputerName $a1
dscacheutil -flushcache
printf "Hostname successfully changed: " $a1
