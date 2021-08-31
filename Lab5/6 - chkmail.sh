#!/bin/bash
IFS=$'\n'
while :
do
	for ITEM in $(sed -n 's/^Subject: //p' /var/mail/$USER)
	do
		echo "*** NEW MAIL ALLERT:" $ITEM
	done 
	sleep 10; # CAN'T USE CRONTABS FOR ONLY 10 SECONDS
done