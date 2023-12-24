#!/bin/bash

# Find out if the current user is root user with builtin commands

echo "You're ID is ${UID}"

# We will write the if else statement

if [[ "${UID}" -eq 0 ]]
then
	echo "You are root user"
else
	echo "You are not the root user"
fi
