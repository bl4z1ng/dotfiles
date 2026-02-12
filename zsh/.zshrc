export PATH=/opt/homebrew/bin:$PATH

export ZSH="$HOME/.oh-my-zsh" # path to your OMZ install.
zstyle ':omz:update' mode disabled  # disable automatic updates

ZSH_THEME="sorin" # https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

HIST_STAMPS="dd.mm.yyyy" # stamp shown in the history command outputs

# editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

source $ZSH/oh-my-zsh.sh

source <(fzf --zsh)
source $HOME/.oh-my-zsh/plugins/fzf/fzf.plugin.zsh
source $HOME/.oh-my-zsh/plugins/macos/macos.plugin.zsh
source $HOME/.oh-my-zsh/plugins/docker-compose/docker-compose.plugin.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

plugins=(
    git
    gh
    macos
    docker
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# node
eval "$(fnm env --use-on-cd --shell zsh)"

# function, that is called just before new terminal prompt is shown
# so, in that case, each new prompt reloads aliases (useful, if tweaking them a lot)
precmd() {
    source $HOME/.dotfiles/zsh/aliases.zsh
}
