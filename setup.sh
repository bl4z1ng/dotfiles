# inspo:
# https://github.com/codingjerk/dotfiles
# https://github.com/topics/dotfiles
# https://github.com/trolund/dotfiles/blob/master/.zsh
# https://github.com/andrew8088/dotfiles

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# default config dir, that many projects use
ln -s -F $HOME/.dotfiles/.config $HOME/.config

# fonts
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-fira-code-nerd-font
brew install --cask font-monaspace

# terminal + shell
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc
brew install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc
#theme export
ln -s ~/.dotfiles/zsh/themes/custom.zsh-theme ~/.oh-my-zsh/themes/custom.zsh-theme

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

# apps
# pick one?
# configure zen-config here: https://github.com/bl4z1ng/zen-config
#brew install --cask zen
brew install --cask arc

brew install --cask bitwarden
brew install --cask raycast
brew install --cask ticktick
brew install --cask telegram-desktop
brew install --cask whatsapp
brew install --cask reader

# code
#
# JS
# brew install fnm
# brew install pnpm
# fnm install --lts

#ln -s -F $HOME/.dotfiles/.code $HOME/.code
# brew install --cask visual-studio-code
brew install --cask zed
brew install --cask rider
brew install --cask docker-desktop
brew install opencode
brew install --cask tailscale-app

# claude
brew install --cask claude-code
brew install --cask claude
curl -fsSL https://raw.githubusercontent.com/JuliusBrussee/caveman/main/install.sh | bash

# utilities
# shortcuts cheat sheet
#brew install --cask keyclu
brew install --cask obs
# menu bar management
brew install thaw
# archive manager
brew install --cask the-unarchiver
# turn off apple music popups
brew install --cask notunes
# man iteration with examples
brew install tlrc
# logitech mouse app
brew install --cask logi-options+
# audible de-drm
brew install --cask openaudible
