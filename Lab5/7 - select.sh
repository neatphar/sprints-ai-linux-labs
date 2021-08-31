#!/bin/bash

select character in "ls" "ls –a" "exit"; do

 case $character in
    "ls")
		ls
      ;;
    "ls –a")
		ls -a
      ;;
    "exit")
		exit;
      ;;
    *) 
      echo "Invalid option $REPLY"
      ;;
	esac
done