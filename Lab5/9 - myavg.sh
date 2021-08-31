#!/bin/bash

if [ $# -gt 0 ]; then
	SUMMATION=0
	for arg in "$@"; do
		let SUMMATION=$SUMMATION+arg
	done
	echo "SUM OF ARGUMENTS = " $SUMMATION
	echo -n "AVERAGE OF ARGUMENTS = " $AVERAGE
	bc <<< "scale=2; $SUMMATION/$#"
fi