executable="wttr"
if [ "$#" -ne 0 ]
then
	executable=$1
fi

cp ./weather.sh /usr/share/
chmod +x /usr/share/weather.sh
ln -s /usr/share/weather.sh /bin/$executable
