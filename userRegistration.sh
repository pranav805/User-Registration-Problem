#!/bin/bash -x
shopt -s extglob
clear
echo "WELCOME TO USER REGISTRATION SYSTEM"

nameExpression="^[A-Z]{1}[a-z]{3,}$"

function firstName(){
   if [[ $1 =~ $2 ]]
   then
      echo "Valid"
   else
      echo "Invalid"
   fi
}

read -p "Enter first name: " firstName
firstName $firstName $nameExpression



