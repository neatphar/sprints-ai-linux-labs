#!/bin/bash

while :
do
    echo -n "Enter Lab5 Task No.: "
    read TASKNO
    case $TASKNO in
        "1")
            sed -n '/lp/p' /etc/passwd
            ;;
        "2")
            sed -n '3!p' /etc/passwd
            ;;
        "3")
            sed -n '$!p' /etc/passwd
            ;;
        "4")
            sed -n '/lp/!p' /etc/passwd
            ;;
        "5")
            sed 's/lp/mylp/' /etc/passwd
            ;;
        *)
            echo "Huh?"
            ;;
    esac

done
            
