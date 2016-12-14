#!/bin/bash

baseUrl="wttr.in"
if [ "$#" -ne 0 ]
then
	city=$1
else
	source ~/.wttrin.default

fi
cityUrl=${city// /-}

curl $baseUrl/$cityUrl
