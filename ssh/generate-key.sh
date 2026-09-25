# ssh key gen.
mkdir -p ~/.ssh/
ssh-keygen -t ed25519 -C "without.auth0@gmail.com" -f ~/.ssh/key
eval "$(ssh-agent -s)"
# Add private key.
ssh-add --apple-use-keychain ~/.ssh/key