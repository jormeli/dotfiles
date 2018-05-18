dir = $(shell pwd)

install: install-config install-i3 install-vim install-vimperator \
	 install-xorg install-zsh install-compton install-scripts install-tmux

install-config: 
	test -d ~/.config || mkdir ~/.config

install-i3:
	rm -rf ~/.config/i3
	ln -sf "$(dir)/i3/.config/i3" ~/.config/i3

install-vim:
	rm -rf ~/.vimrc
	ln -sf "$(dir)/vim/.vimrc" ~/.vimrc

install-vimperator:
	rm -rf ~/.vimperatorrc
	ln -sf "$(dir)/vimperator/.vimperatorrc" ~/.vimperatorrc

install-xorg:
	rm -rf ~/.Xresources ~/.Xdefaults ~/.xinitrc ~/.Xmodmap
	ln -sf "$(dir)/xorg/.Xresources" ~/.Xresources
	ln -sf "$(dir)/xorg/.Xdefaults" ~/.Xdefaults
	ln -sf "$(dir)/xorg/.xinitrc" ~/.xinitrc
	ln -sf "$(dir)/xorg/.Xmodmap" ~/.Xmodmap

install-zsh:
	rm -rf ~/.zshrc
	ln -sf "$(dir)/zsh/.zshrc" ~/.zshrc

install-compton:
	rm -rf ~/.config/compton.conf
	ln -sf "$(dir)/compton/.config/compton.conf" ~/.config/compton.conf

install-scripts:
	! test -h ~/.local/bin || rm ~/.local/bin
	! test -d ~/.local/bin || ( echo "~/.local/bin already exists" && exit 1 )
	ln -sf "$(dir)/scripts" ~/.local/bin

install-tmux:
	rm -rf ~/.tmux.conf
	ln -sf "$(dir)/tmux/.tmux.conf" ~/.tmux.conf
