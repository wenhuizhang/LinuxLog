#!/bin/bash
# bash script for record taking of registry files
# for seattle fedora jun 8th 2017

timestamp=$(date +"%T")
echo $timestamp
cd ./records
mkdir ./"$timestamp"
cd ./"$timestamp"

# log file list goes here
cp /var/log/audit/audit.log ./
cp /etc/passwd ./
cp /etc/shadow ./
#cp /var/log/auth.log ./
#cp /var/log/sudo.log ./
cp /var/log/wtmp ./
cp -r /etc/sysconfig.conf ./
cp -r /tmp ./
#cp /var/log/installer/syslog ./
cp -r /etc/security  ./	 

cp /var/log/dnf.log ./
cp /var/log/secure ./
cp /proc/kmsg ./
cd ..

