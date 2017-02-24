#!/bin/bash
### FTP login credentials bellow ###
FTPU="FTP-Username"
FTPP="FTP-Password"
FTPS="FTP-IP-Address"
 
NOW=$(date +"%d-%m-%Y")
 
### local directory to backup ###
FILE="/DIR-to-Backup"
 
### Login to remote server ###
### No need to edit any of the fields bellow ###
### Default DIR is backup ###
lftp -u $FTPU,$FTPP -e "cd backup;mkdir $NOW;cd $NOW;mirror -R $FILE /backup/$NOW;quit" $FTPS
