#!/bin/bash
for ITEM in $(ls ~)
do
	chmod u+x,g+x,o+x ~/$ITEM
done
