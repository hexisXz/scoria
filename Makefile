install: scoria.c scoria
	 cd ~/ && git clone https://github.com/hexisXz/scoria.git && mkdir ~/.local/bin/scoria && mv ~/scoria/scoria ~/.local/bin/scoria && mkdir ~/.config/scoria/ && mv ~/scoria/update ~/.config/scoria/ && mv ~/scoria/uninstall ~/.config/scoria/ && sudo mv ~/scoria/DOC/scoria.1 /usr/share/man/man8 && gcc scoria.c -o scoria && sudo mv scoria /bin/ && sudo rm -r ~/scoria 

uninstall:
	sudo rm /bin/scoria && sudo rm -r ~/.config/scoria && echo "uninstalled." || echo "ERROR."
