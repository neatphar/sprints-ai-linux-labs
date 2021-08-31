#!/bin/bash
arr=()
echo -n "What's the number of items? "; read NUM

for (( ; NUM>0; NUM-- )); do
	echo -n "What's this item name? "; read ITEM
	arr+=($ITEM)
done
echo "Your array is: "
echo ${arr[*]}