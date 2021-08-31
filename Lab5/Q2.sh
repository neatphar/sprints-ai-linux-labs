#!/bin/bash

while :
do
    echo -n "Enter Lab5 Task No.: "
    read TASKNO
    case $TASKNO in
        "1")
            awk -F: '{ print $5 }' /etc/passwd
            ;;
        "2")
            awk -F: '{ print $1,$5,$7,NR }' /etc/passwd
            ;;
        "3")
            awk -F: '$3 > 500 { print $1,$5,$7 }' /etc/passwd
            ;;
        "4")
            awk -F: '$3 == 500 { print $1,$5,$7 }' /etc/passwd
            ;;
        "5")
            awk -F: 'NR >= 5 && NR <= 15 { print $0 }' /etc/passwd
            ;;
        "6")
            awk -F: '{x += $3} END {print x}' /etc/passwd
            ;;
        *)
            echo "Huh?"
            ;;
    esac

done
            
