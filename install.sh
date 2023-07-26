#!/bin/sh


# colors
red='\033[0;31m'
blue='\033[0;34m'
green='\033[0;32m'
purple='\033[0;35m'
NC='\033[0m' # No Color



if command -v pacman 2>/dev/null; then
	sudo pacman -S wget curl && cd ~/ && git clone https://github.com/hexisXz/scoria.git && cd ~/scoria && sudo make
fi


if command -v apt 2>/dev/null; then
	 sudo apt install wget curl && cd ~/ && git clone https://github.com/hexisXz/scoria.git && cd ~/scoria && sudo make

fi

if command -v dnf 2>/dev/null; then
	 sudo dnf install wget curl && cd ~/ && git clone https://github.com/hexisXz/scoria.git && cd ~/scoria && sudo make
fi


if command -v xbps-install 2>/dev/null; then
	 sudo xbps-install -Sy wget curl && cd ~/ && git clone https://github.com/hexisXz/scoria.git && cd ~/scoria && sudo make
fi





