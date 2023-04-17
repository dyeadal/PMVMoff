#!/bin/bash

# creates vmid varaible that stores all VM IDs present
vmid=$(qm list | awk 'NR>1 {print $1}')
echo "Printing vmid variable:"
echo "$vmid"

# displays which ID line is running
vmrunning=$(qm list | awk 'NR>1 {print $3}' | grep -n running)
echo "Printing vmrunning variable:"
echo "$vmrunning" 


echo "Performing for loop:"

# for loop that allows commands on individual lines=single VM ID

i=1
for line in $vmid 
do
        echo "Increment $i"
        if [[$i == $vmrunning]] 
        then
                echo "Do action" #qm shutdown $line
        fi


        i=$(($i+1))
done
