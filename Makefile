world: spacevim brew dotfiles

brew:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
	echo 'brew install $$(cat brew.list)'

zsh:
	chsh -s /bin/zsh

oh-my-zsh:
	sh -c "$$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

power10k:
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
	echo 'Set ZSH_THEME=powerlevel10k/powerlevel10k in your ~/.zshrc'

dotfiles:
	ln -sf ~/macdotfiles/.gitattributes ~/.gitattributes
	ln -sf ~/macdotfiles/.gitconfig ~/.gitconfig
	ln -sf ~/macdotfiles/.gitexcludes ~/.gitexcludes
	ln -sf ~/macdotfiles/.gemrc ~/.gemrc

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
	defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES
	defaults write com.apple.dt.Xcode PBXNumberOfParallelBuildSubtasks 8
	defaults write com.apple.dt.Xcode IDEBuildOperationMaxNumberOfConcurrentCompileTasks 8
	defaults write com.apple.dt.Xcode IDEIndexerActivityShowNumericProgress -bool YES
