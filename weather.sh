#!/bin/bash

baseUrl="wttr.in"
confFile="$HOME/.wttrin.default"

if [ "$#" -ne 0 ]
then
	if [ $1 == "--moon" ]; then
		MONTHS=(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)
		MONTH=$(date +'%m')-1
		DATE=`date +%Y-${MONTHS[$MONTH]}-%d`
		curl --silent $baseUrl/Moon@$DATE
		exit
	fi
	city=$*
else
	if [ ! -f "$confFile" ]; then
		echo "Error: You must either define a location via default file or argument"
		exit
	fi
	source ~/.wttrin.default

fi
cityUrl=${city// /-}

curl --silent $baseUrl/$cityUrl
