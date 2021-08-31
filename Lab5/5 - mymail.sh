#!/bin/bash
dpkg -l mailutils 1>> /dev/null
if [ $? -gt 0 ]; then
	sudo apt install mailutils -y
fi

for USER in $(awk -F: '{ print $1 }' /etc/passwd)
do
	mail -s "Maintenence" $USER < mtemplate
done

