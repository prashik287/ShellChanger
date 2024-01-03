#!/bin/bash

echo -e "\e[0;31m####################################################################"
echo "#								   #"
echo -e "#			Created by  Ravan	                   #"	
echo "#								  #"
echo "###################################################################"
echo -e "\e[0;93m  "
PS3="Enter Your Choice:"
mapfile -t lines < <(cat /etc/shells)
#printf "%s\n""${lines[@]}"
echo ""
for((i=0 ; i < ${#lines[@]} ; i++))
do
    select option in "${lines[@],'Quit'}"
    do
        $option
    done 
echo 
done
echo 
