#!/bin/bash
# bash script for record taking of registry files
k="10"

rm -rf ./records
mkdir ./records

while [ "$k" -ne "0" ];
do
echo "taking records" 
echo $[10-$k]
./runTakeRecords.sh &
sleep 1
k=$[$k-1]
done
