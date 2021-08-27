#!/bin/bash

while :
do
    echo -n "Enter Lab4 Task No.: "
    read TASKNO
    case $TASKNO in
        "1")
            echo "tar -tf archive.tar"
            ;;
        "2")
            tar -cf ~/etc.bak.tar /etc
            ;;
        "3")
            ls -id /
            ls -id /etc
            ls -i /etc/hosts
            ;;
        "4")
            cp /etc/passwd ~/
            diff /etc/passwd ~/passwd
            cmp  /etc/passwd ~/passwd
            echo "difference" >> passwd
            diff /etc/passwd ~/passwd
            cmp  /etc/passwd ~/passwd
            ;;
        "5")
            ln -s /etc/passwd /boot/
            ;;
        "6")
            ln /etc/passwd /boot/ 
            echo "Creating hard link with different name.."
            ln /etc/passwd /boot/passwd_h

            ;;
        *)
            echo "Huh?"
            ;;
    esac

done
            

