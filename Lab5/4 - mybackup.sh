#!/bin/bash
array_of_files=()
for ITEM in $(ls ~)
do
	if [ -f ~/$ITEM ]; then
		array_of_files+=(~/$ITEM)
	fi
done
if [ ${#array_of_files[@]} -gt 0 ]; then
	tar -cf 'home.bak.tar' ${array_of_files[*]}
fi
