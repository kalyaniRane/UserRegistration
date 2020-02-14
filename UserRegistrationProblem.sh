#!/bin/bash -x
shopt -s extglob

echo "Welcome To RegEx Problems"

validName="^[A-Z][a-z]{3,}$"

function checkValid()
{
	local name=$1
	if [[ $name =~ $validName ]]
	then
			echo "Valid Name"
	else
			echo "Invalid Name"
			exit
	fi
}

echo "Enter First Name: "
read firstName
checkValid $firstName
echo "Enter Last Name: "
read lastName
checkValid $lastName
