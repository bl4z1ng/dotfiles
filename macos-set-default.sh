# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 1

# Show the ~/Library folder.
chflags nohidden ~/Library

# Show full path in Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Change paddings in menu bar for a more compact view
defaults -currentHost write -globalDomain NSStatusItemSpacing -int 6
defaults -currentHost write -globalDomain NSStatusItemSelectionPadding -int 12
# To reset, use:
#defaults -currentHost delete -globalDomain NSStatusItemSelectionPadding
#defaults -currentHost delete -globalDomain NSStatusItemSpacing

# Change speed and delay of dock animation (0 for instant)
defaults write com.apple.dock autohide-time-modifier -float 0.3
defaults write com.apple.dock autohide-delay -float 0
#killall Dock

# always light theme for safari
defaults write com.apple.Safari NSRequiresAquaSystemAppearance -bool yes
