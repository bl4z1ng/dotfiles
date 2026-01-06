# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install git
brew install gh

# ssh key gen.
sh new/.ssh/generate-key.sh

# Login with created ssh key.
gh auth login

# Apps
# Pick one?
# Configure zen-config here: https://github.com/bl4z1ng/zen-config
#brew install --cask zen
brew install --cask arc

brew install --cask bitwarden
brew install --cask raycast
brew install --cask ticktick
brew install --cask telegram-desktop

brew install --cask visual-studio-code
brew install --cask ghostty

# Utilities
# Shortcuts cheat sheet
brew install --cask keyclu
# Menu bar management
brew install --cask jordanbaird-ice
# Archive manager
brew install --cask the-unarchiver
# Turn off apple music popups
brew install --cask notunes
# Google Drive
#brew install --cask google-drive