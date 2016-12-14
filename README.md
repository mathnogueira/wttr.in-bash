# wttr.in script
Script that checks the weather for you using the wttr.in webservice.

## Installation
To install this, you can execute the *install.sh* script and it will put the weather.sh in your /bin dir, so you can access it easily from the terminal.

The installation script can receive an optional argument *executable_name* that is the name of the symbolic link created in your /bin dir. (Default: wttr).
```bash
chmod +x install.sh
sudo ./install.sh <executable_name>
```

## Usage
You can define a default location, for that, execute the following:
```bash
touch ~/.wttrin.default
echo city="My city name" > ~/.wttrin.default
```

You can also provide an argument to inform the city that you want to check the weather. Note that you must use quotes (single or double) when the city name has a blank space.
```bash
wttr "Belo Horizonte"
wttr "Lavras"
wttr Lavras
```
