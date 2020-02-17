#!/bin/bash
shopt -s extglob

echo "Welcome To RegEx Problems"

validName="^[A-Z][a-z]{3,}$"
validEmail="^([a-zA-Z]{3,}([.|_|+|-]?[a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,3}([.]?[a-zA-Z]{2,3})?)$"
validNumber="^[1-9]{2}[[:space:]][0-9]{10}$"

function checkValid(){
	local name=$1
	if [[ $name =~ $validName ]]
	then
			echo "Your Name is Valid."
	else
			echo "Plz Enter Valid Name."
			exit
	fi
}

function checkValidEmail(){

	local email=$1
	if [[ $email =~ $validEmail ]]
	then
			echo "Your Email is Valid."
	else
			echo "Plz Enter Valid Email ID."
	fi
}

function checkValidNumber(){

   local number=$1
   if [[ $number =~ $validNumber ]]
   then
         echo "Your Mobile Number is Valid."
   else
         echo "Plz Enter Valid Mobile Number."
         exit
   fi
}

echo "Enter First Name: "
read firstName
checkValid $firstName
echo "Enter Last Name: "
read lastName
checkValid $lastName
echo "Enter Email-ID: "
read emailId
checkValidEmail $emailId
echo "Enter Mobile Number: "
read mobNumber
checkValidNumber "$mobNumber"
