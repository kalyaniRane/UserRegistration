#!/bin/bash
shopt -s extglob

echo "Welcome To RegEx Problems"

validName="^[A-Z][a-z]{3,}$"

echo "Enter First Name: "
read firstName

function checkValid()
{
	local name=$1
	if [[ $name =~ $validName ]]
	then
			echo "Valid Name"
	else
			echo "Invalid Name"
	fi
}

checkValid $firstName
echo "Enter Last Name: "
read lastName
checkValid $lastName
