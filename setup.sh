sh 

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# default config dir, that many projects use
ln -s -F $HOME/.dotfiles/.config $HOME/.config

# terminal + shell
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc
brew install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc
brew install --cask ghostty
brew install fzf

# git
ln -s -F $HOME/.dotfiles/.gitconfig $HOME/.gitconfig
#ssh
brew install git
brew install gh
# ssh key gen.
mkdir $HOME/.ssh/
ln -s -F $HOME/.dotfiles/ssh/config $HOME/.ssh/config
sh $HOME/ssh/generate-key.sh
# Login with created ssh key.
gh auth login

# fonts
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-fira-code-nerd-font
brew install --cask font-monaspace

# apps
# pick one?
# configure zen-config here: https://github.com/bl4z1ng/zen-config
#brew install --cask zen
brew install --cask arc

brew install --cask bitwarden
brew install --cask raycast
brew install --cask ticktick
brew install --cask telegram-desktop

#code
brew install --cask visual-studio-code
# TODO: add c
#ln -s -F $HOME/.dotfiles/.code $HOME/.code

# utilities
# shortcuts cheat sheet
brew install --cask keyclu
# menu bar management
brew install --cask jordanbaird-ice
# archive manager
brew install --cask the-unarchiver
# turn off apple music popups
brew install --cask notunes
