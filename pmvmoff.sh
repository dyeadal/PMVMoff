#!/bin/bash

# creates vmid varaible that stores all VM IDs that have the status of "running"
vmid=$(qm list | awk '$3 ~ /running/ {print $1}')

# for loop that allows commands on individual lines=single VM ID
for line in $vmid 
do
        echo "VM: $line"
done
