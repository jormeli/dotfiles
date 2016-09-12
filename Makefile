dir = $(shell pwd)

install: install-config install-i3 install-vim install-vimperator \
	 install-xorg install-zsh install-compton install-scripts

install-config: 
	test ~/.config || mkdir ~/.config

install-i3:
	rm -rf ~/.config/i3
	ln -sf "$(dir)/i3" ~/.config/i3

install-vim:
	rm -rf ~/.vimrc
	ln -sf "$(dir)/vim/vimrc" ~/.vimrc

install-vimperator:
	rm -rf ~/.vimperatorrc
	ln -sf "$(dir)/vimperator/vimperatorrc" ~/.vimperatorrc

install-xorg:
	rm -rf .Xresources .Xdefaults .xinitrc
	ln -sf "$(dir)/xorg/Xresources" ~/.Xresources
	ln -sf "$(dir)/xorg/Xdefaults" ~/.Xdefaults
	ln -sf "$(dir)/xorg/xinitrc" ~/.xinitrc

install-zsh:
	rm -rf ~/.zshrc
	ln -sf "$(dir)/zsh/zshrc" ~/.zshrc

install-compton:
	rm -rf ~/.config/compton.conf
	ln -sf "$(dir)/compton/compton.conf" ~/.config/compton.conf

install-scripts:
	rm -rf ~/.config/scripts
	ln -sf "$(dir)/scripts" ~/.config/scripts
