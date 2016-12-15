#!/bin/bash

baseUrl="wttr.in"
confFile="$HOME/.wttrin.default"

if [ "$#" -ne 0 ]
then
	city=$*
else
	if [ ! -f "$confFile" ]; then
		echo "Error: You must either define a location via default file or argument"
		exit
	fi
	source ~/.wttrin.default

fi
cityUrl=${city// /-}

curl $baseUrl/$cityUrl
