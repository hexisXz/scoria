install: scoria.c scoria
	sudo mv ~/scoria/scoria /bin/ && gcc scoria.c -o scoria && sudo rm -r ~/scoria 

uninstall:
	sudo rm /bin/scoria && sudo rm -r ~/.config/scoria && echo "uninstalled." || echo "ERROR."
