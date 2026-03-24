#!/bin/bash 
<<info
 This shell script will take periodic backups 
eg. 
./backup.dh <source> <dest>

info
<<help
This is can also we perform using the cron-tab
help
src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null
aws s3 sync "$dest"/  s3://first-server-backup

echo "backup completed & uploaded to the s3 bucket"
