dotfiles:
	ln -sf ~/macdotfiles/.zshrc ~/.zshrc
	ln -sf ~/macdotfiles/.gitattributes ~/.gitattributes
	ln -sf ~/macdotfiles/.gitconfig ~/.gitconfig
	ln -sf ~/macdotfiles/.gitexcludes ~/.gitexcludes
	ln -sf ~/macdotfiles/.gemrc ~/.gemrc

shell:
	sudo sh -c 'echo set completion-ignore-case On >> /etc/inputrc'

xcode:
	mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
	cp ~/Library/Mobile\ Documents/com~apple~CloudDocs/xcode/*.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
	defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES
	defaults write com.apple.dt.Xcode IDEIndexerActivityShowNumericProgress -bool YES

brew:
	@echo "Installing Homebrew..."
	@if ! command -v brew >/dev/null 2>&1; then \
		/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; \
	fi
	@echo "Installing Homebrew formulae..."
	@brew install cloc git htop wget minidlna swiftformat neofetch cursor-cli zellij lazygit lazyvim neovim gh pre-commit
	@echo "Installing Homebrew casks..."
	@brew install --cask ghostty font-0xproto-nerd-font qlmarkdown

