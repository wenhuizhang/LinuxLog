#!/bin/bash
# bash script for record taking of registry files

timestamp=$(date +"%T")
echo $timestamp
cd ./records
mkdir ./"$timestamp"
cd ./"$timestamp"

# log file list goes here
cp /etc/passwd ./
cp /etc/shadow ./
cp /var/log/auth.log ./
cp /var/log/sudo.log ./
cp /var/log/wtmp ./
cp /etc/sysconfig.conf ./
cp -r /tmp ./
cp /var/log/installer/syslog ./
cp -r /etc/security  ./	  	  
cd ..

