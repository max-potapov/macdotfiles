brew:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo 'eval "$$(/opt/homebrew/bin/brew shellenv)"' >> /Users/max/.zprofile
	echo 'brew install $$(cat brew.list)'

oh-my-zsh:
	sh -c "$$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

power10k:
	brew install romkatv/powerlevel10k/powerlevel10k
	echo "source $$(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

dotfiles:
	ln -sf ~/macdotfiles/.gitattributes ~/.gitattributes
	ln -sf ~/macdotfiles/.gitconfig ~/.gitconfig
	ln -sf ~/macdotfiles/.gitexcludes ~/.gitexcludes
	ln -sf ~/macdotfiles/.gemrc ~/.gemrc

shell: dotfiles oh-my-zsh power10k
	sudo sh -c 'echo set completion-ignore-case On >> /etc/inputrc'

spacevim:
	curl -sLf https://spacevim.org/install.sh | bash

ruby:
	brew install rbenv ruby-build
	rbenv install 3.1.2
	rbenv global 3.1.2
	ruby -v

xcode:
	mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
	cp ~/Library/Mobile\ Documents/com~apple~CloudDocs/xcode/*.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
	defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES
	defaults write com.apple.dt.Xcode IDEIndexerActivityShowNumericProgress -bool YES
