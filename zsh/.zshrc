eval "$(/opt/homebrew/bin/brew shellenv)" # sets PATH and $HOMEBREW_PREFIX
export PATH="$HOME/.local/bin:$PATH"
export DOTNET_ROOT="$HOME/.dotnet"
export PATH="$DOTNET_ROOT:$PATH"

export ZSH="$HOME/.oh-my-zsh" # path to your OMZ install.
zstyle ':omz:update' mode disabled  # disable automatic updates

ZSH_THEME="custom" # https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

HIST_STAMPS="dd.mm.yyyy" # stamp shown in the history command outputs

# editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# must be set before sourcing oh-my-zsh
plugins=(
    git
    gh
    macos
    docker
    docker-compose
    fzf
)

source $ZSH/oh-my-zsh.sh

# installed via brew, not omz custom plugins; syntax-highlighting goes last
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# node
eval "$(fnm env --use-on-cd --shell zsh)"

# after editing aliases, run `reload`
source $HOME/.dotfiles/zsh/aliases.zsh
