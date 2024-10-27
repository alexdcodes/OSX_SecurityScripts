#made by a.diker 
#
#
#
#
# take interfaces offline that i do not need or do not know what they are used for?
printf "[] [] [] [] [] [] [] [] [] [] [] [] [] []"
printf "Powering down (non) used interfaces: \n" 

a=gif0
b=utun0
c=p2p0
d=stf0
e=awd10

echo Powering off 
echo $a + " and " + $b + " and " + $c + " and " +$d  

printf "\n" 
printf "[][][][][][][][][][][][][][][][][][][][]"

sudo ifconfig gif0 down 
sudo ifconfig utun0 down 
sudo ifconfig p2p0 down
sudo ifconfig stf0 down 
sudo ifconfig awdl0 down 
sudo ifconfig stf0 down

sudo ifconfig gif0 delete 
sudo ifconfig utun0 delete 
sudo ifconfig p2p0 delete
sudo ifconfig stf0 delete 
sudo ifconfig awdl0 delete 
sudo ifconfig stf0 delete

printf "\n - Script finished -" 
