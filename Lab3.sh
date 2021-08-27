#!/bin/bash

while :
do
    echo -n "Enter Lab3 Task No.: "
    read TASKNO
    case $TASKNO in
        "1")
            mkdir /home/islam
            useradd -c "Islam Askar" islam
            echo -e "islam\nislam" | passwd islam
            ;;
        "2")
            useradd -c "Bad User" baduser
            echo -e "baduser\nbaduser" | passwd baduser
            ;;
        "3")
            groupadd -g 30000 pgroup
            ;;
        "4")
            groupadd badgroup
            ;;
        "5")
            usermod -aG pgroup islam
            ;;
        "6")
            echo -e "password\npassword" | passwd islam
            ;;
        "7")
            chage -M 30 islam
            ;;
        "8")
            usermod -L baduser
            ;;
        "9")
            userdel baduser
            ;;
        "10")
            groupdel badgroup
            ;;
        "13")
            mkdir ~/myteam
            chmod u=r,go=- ~/myteam
            ;;
        "14")
            su - islam
            ;;
        "15")
            cd /home/$USER/myteam
            ;;
        "16")
            chmod 631 /etc/passwd-
            chmod u=rw,g=wx,o=x /etc/passwd-
            umask 035 # 666 - 631
            echo "What is the maximum permission a file can have by default? 666" # 666 - umask
            echo "What is that for directory? 777" # 777 - umask
            umask 777
            ;;
        "17")
            echo "Copy a directory: Parent directory (rx) - Source directory (rx) - Target parent directory (wx)"
            echo "Copy a file: Parent directory (rx) - Source file (r) - Target parent directory (wx)"
            echo "Delete a file: Parent directory (wx)"
            echo "Change to a directory: (x)"
            echo "List a directory content: (x)"
            echo "View a file content: (r)"
            echo "Modify a file content: (w)"
            ;;
        "18")
            touch test_file
            chmod 444 test_file
            echo "test" > test_file
            ;;
        "19")
            echo "Execute bit permission for: "
            echo "* File: execute a file as in a bash script."
            echo "* Directory: make a directory your working directory or 'cd' into it."
            ;;
        "20")
            sleep 100 &
            ;;
        "21")
            pkill -9 sleep
            ;;
        "22")
            ps -u $USER
            ;;
        "23")
            ps -AF | grep -v $USER
            ;;
        "24")
            pgrep -u $USER -f
            ;;
        *)
            echo "Huh?"
            ;;
    esac

done
            

