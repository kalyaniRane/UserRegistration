#!/bin/bash -x
shopt -s extglob

echo "Welcome To RegEx Problems"

echo "Enter First Name"
read firstName

validFirstName="^[A-Z][a-z]{3,}$"

function checkValid()
{
	local name=$1
	if [[ $name =~ $validFirstName ]]
	then
			echo "Valid Name"
	else
			echo "Invalid Name"
	fi
}
checkValid $firstName
