#!/bin/sh


# colors
red='\033[0;31m'
blue='\033[0;34m'
green='\033[0;32m'
purple='\033[0;35m'
NC='\033[0m' # No Color



printf "do you want to install scoria? (y/n) "

read e


if [ "$e" = "y" ]; then
	if command -v curl >/dev/null; then
		git clone https://github.com/hexisXz/scoria.git && cd ./scoria && chmod +x ../scoria/scoria && mkdir ~/.local/bin/scoria && mv ../scoria/scoria ~/.local/bin/scoria && mkdir ~/.config/scoria/ && mv ~/scoria/update ~/.config/scoria/ && mv ~/scoria/uninstall ~/.config/scoria/ && sudo mv DOC/scoria.1 /usr/share/man/man8 && sudo rm -r ../scoria && echo -e "${green}Done" && echo 'make sure you put "export PATH="$HOME/.local/bin/scoria:$PATH" in your zshrc or you bashrc.'

	else
   	   echo "ERROR: you need curl to use scoria. installing curl.."
   	   if command -v pacman 2>/dev/null; then
        	  sudo pacman -S curl

	   fi

                   
	   if command -v apt 2>/dev/null; then
		  sudo apt install curl 

	   fi

           if command -v dnf 2>/dev/null; then
		   sudo dnf install curl  

	   fi
	fi



if [ "$e" = "n" ]; then
	exit 1
fi

fi
