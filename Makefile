world: spacevim brew shell

brew:
	/usr/bin/ruby -e '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)'

zsh:
	chsh -s /bin/zsh

oh-my-zsh:
	sh -c '$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)'

power10k: oh-my-zsh
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
	echo 'Set ZSH_THEME=powerlevel10k/powerlevel10k in your ~/.zshrc'

dotfiles:
	cd
	ln -s macdotfils/.gitattributes .
	ln -s macdotfils/.gitconfig .
	ln -s macdotfils/.gitexcludes .
	ln -s macdotfils/.gemrc .

shell: dotfiles power10k
	sudo sh -c 'echo set completion-ignore-case On >> /etc/inputrc'

spacevim:
	curl -sLf https://spacevim.org/install.sh | bash

ruby:
	brew install rbenv ruby-build
	rbenv install 2.6.3
	rbenv global 2.6.3
	ruby -v

xcode:
	mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
	cp ~/Library/Mobile\ Documents/com~apple~CloudDocs/xcode/*.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
