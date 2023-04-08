#!/bin/sh


# colors
red='\033[0;31m'
blue='\033[0;34m'
green='\033[0;32m'
purple='\033[0;35m'
NC='\033[0m' # No Color



echo "do you want to install hexpmg? (y/n)"

read e


if [ "$e" = "y" ]; then
	if command -v curl >/dev/null; then
		git clone https://github.com/hexisXz/hexpmg.git && cd hexpmg && chmod +x ~/hexpmg/hexpmg && sudo mv ~/hexpmg/hexpmg /bin && mkdir ~/.config/hexpmg/ && mv ~/hexpmg/update ~/.config/hexpmg/ && mv ~/hexpmg/uninstall ~/.config/hexpmg/ && sudo rm -r ~/hexpmg && echo -e "${green}Done"

	else
   	   echo "ERROR: you need curl to use hexpmg. installing curl.."
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
	git clone https://github.com/hexisXz/hexpmg.git && cd hexpmg && chmod +x ~/hexpmg/hexpmg && sudo mv ~/hexpmg/hexpmg /bin && mkdir ~/.config/hexpmg/ && mv ~/hexpmg/update ~/.config/hexpmg/ && mv ~/hexpmg/uninstall ~/.config/hexpmg/ && sudo rm -r ~/hexpmg
fi

fi
