#!/bin/bash

# creates vmid varaible that stores all VM IDs present
vmid=$(qm list | awk 'NR>1 {print $1}')
echo "$vmid"

# displays which ID line is running
vmrunning=$(qm list | awk 'NR>1 {print $3}' | grep -n running)
echo "$vmrunning" 

# for loop that allows commands on individual lines=single VM ID

i=1
for line in $vmid 
do
        echo $i
        echo "VM: $line"
        qm shutdown $line

        i=$(($i+1))
done
