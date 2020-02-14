#!/bin/bash -x
shopt -s extglob
clear
echo "WELCOME TO USER REGISTRATION SYSTEM"

nameExpression="^[A-Z]{1}[a-z]{2,}$"
eMailExpression="^[A-Za-z]{3,}([.|+|_|-]?[A-Za-z0-9]+)?[@][A-Za-z0-9]+[.][A-Za-z]{2,4}([.][A-Za-z]{2,4}+)?$"
mobileExpression="^[0-9]{2}[ ]{1}[0-9]{10}$"

function checkValidity(){
   if [[ $1 =~ $2 ]]
   then
      echo "Valid"
   else
      echo "Invalid"
   fi
}

read -p "Enter First name: " firstName
checkValidity $firstName $nameExpression

read -p "Enter Last name: " lastName
checkValidity $lastName $nameExpression

read -p "Enter your Email address: " eMail
checkValidity $eMail $eMailExpression

read -p "Enter your Mobile number: " mobileNumber
checkValidity "$mobileNumber" "$mobileExpression"


