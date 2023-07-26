install: scoria.c scoria
	 mkdir ~/.local/bin/scoria && mv ~/scoria/scoria ~/.local/bin/scoria && mkdir ~/.config/scoria/ && mv ~/scoria/update ~/.config/scoria/ && mv ~/scoria/uninstall ~/.config/scoria/ && gcc scoria.c -o scoria && sudo mv scoria /bin/ && sudo rm -r ~/scoria 

uninstall:
	sudo rm /bin/scoria && sudo rm -r ~/.config/scoria && echo "uninstalled." || echo "ERROR."
