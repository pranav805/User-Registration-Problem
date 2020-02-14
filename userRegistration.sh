#!/bin/bash -x
shopt -s extglob
clear
echo "WELCOME TO USER REGISTRATION SYSTEM"

nameExpression="^[A-Z]{1}[a-z]{2,}$"
function firstAndLastName(){
   if [[ $1 =~ $2 ]]
   then
      echo "Valid"
   else
      echo "Invalid"
   fi
}

read -p "Enter First name: " firstName
firstAndLastName $firstName $nameExpression

read -p "Enter Last name: " lastName
firstAndLastName $lastName $nameExpression



