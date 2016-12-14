baseUrl="wttr.in"
city=$1
cityUrl=${cidade// /-}

curl $baseUrl/$cityUrl
