# Oh My Zsh users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.

alias dots='zed $HOME/.dotfiles'
alias reload='exec zsh'

#git
alias gs='git status'

# %C - color
# %h - commit hash
# %an - autor name
# %ar - commit time
# %D - ref names
# %s - commit message
# %n - new line
alias gl='git log --graph --all --pretty=format:"%C(magenta)%h %C(white) %an  %ar%C(auto)  %D%n%s%n"'

br() {
    # --preview will show the result of call from passed param, e.g. here, git show returns commit info
    # {-1} : last token, used to ignore leading symbols, that git returns
    # --bind connects key input (enter) to become action (git checkout)
    git branch | fzf --preview 'git show --color=always {-1}' --bind 'enter:become(git checkout {-1})' --height 40% --layout reverse
}

alias fo='ls | fzf | xargs zed'
