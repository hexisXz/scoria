install: scoria.c scoria
	gcc scoria.c -o scoria && sudo mv scoria /bin/ 
	cd ~/ && git clone https://github.com/hexisXz/scoria.git && mkdir ~/.local/bin/scoria && mv ~/scoria/scoria ~/.local/bin/scoria && mkdir ~/.config/scoria/ && mv ~/scoria/update ~/.config/scoria/ && mv ~/scoria/uninstall ~/.config/scoria/ && sudo mv ~/scoria/DOC/scoria.1 /usr/share/man/man8 && sudo rm -r ~/scoria

uninstall:
	rm ~/.local/bin/scoria/scoria
	sudo rm -r ~/.local/bin/scoria && sudo rm -r ~/.config/scoria && echo "uninstalled." || echo "ERROR."
