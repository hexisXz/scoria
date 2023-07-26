#!/bin/sh


# colors
red='\033[0;31m'
blue='\033[0;34m'
green='\033[0;32m'
purple='\033[0;35m'
NC='\033[0m' # No Color



echo -e "${blue}do you want to install scoria? (y/n)${blue}"


cd ~/ && git clone https://github.com/hexisXz/scoria.git && cd ~/scoria && sudo make


