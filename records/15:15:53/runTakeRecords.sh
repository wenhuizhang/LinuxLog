#!/bin/bash
# bash script for record taking of registry files

timestamp=$(date +"%T")
echo $timestamp
cd ./records
mkdir ./"$timestamp"
cd ./"$timestamp"



cp ../../*.sh ./

	  
	  
cd ..

