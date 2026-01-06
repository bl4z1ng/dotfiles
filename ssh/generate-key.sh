# ssh key gen.
mkdir ~/.ssh/
ssh-keygen -t ed25519 -C "without.auth0@gmail.com" -f ~/.ssh/key
ln -s config ~/.ssh/config
eval "$(ssh-agent -s)"
# Add private key.
ssh-add --apple-use-keychain ~/.ssh/key