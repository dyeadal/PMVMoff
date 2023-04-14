#!/bin/bash

# creates vmid varaible that stores all VM IDs present
vmid=$(qm list | awk 'NR>1 {print $1}')

# for loop that allows commands on individual lines=single VM ID
for line in $vmid 
do
        echo "VM: $line"
done