#!/bin/bash


<<help 
This shell script is to create users 

help

echo " ===Creation of user Started "

 read -p "Please enter your username:" username
 read -p "Please enter the password :" password

sudo  useradd -m   "$username"
echo -e "$password\n$password" | sudo passwd "$username" 

  echo "===Creation of User completed"
 

  echo "====Deletion of User is Started "


  sudo userdel  "$username"

  echo "==Deletion of user is done "
cat /etc/passwd |grep $username |wc  | awk '{print $1}'
  echo"as wc is 0 the user is deleted "
