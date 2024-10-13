#!/bin/bash

echo "Choose an option"

echo "1. Check disk space"
echo "2. Show uptime"
echo "3. Backup Arena diectory and keep last 3 backups"
echo "4. Parse configuration file"

read number 

case $number in

    1) df -h ;;
    2) uptime;;

    3) SOURCE_DIRECTORY="../Arena"
       BACKUP_DIRECTORY="backup"
       MAX_BACKUP=3

       mkdir -p "$BACKUP_DIRECTORY"

       TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
       BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

       echo "Backup created: $BACKUP_NAME"

       cd "$BACKUP_DIRECTORY" || exit 
       ls -t | sed '1,3d' | while LFS= read -r file; do
            rm -r $file
        done;;

        4) CONFIG_FILE="settings.conf"
            if [ ! -f "$CONFIG_FILE" ];then
            echo "Configuration file doesn't exist"
            exit 1
            fi

            while IFS='=' read -r key value; do
                echo "Key: $key, Value: $value"
            done <$CONFIG_FILE;;
        
        *) echo "Invalid option";;
    
esac