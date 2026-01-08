export PATH=/opt/homebrew/bin:$PATH

#fzf
source <(fzf --zsh)

br() {
    #--preview will show the result of call from passed param, e.g. here, git show returns commit info
    #{-1} : last token, used to ignore leading symbols, that git returns
    #--bind connects key input (enter) to become action (git checkout)
    git branch | fzf --preview 'git show --color=always {-1}' --bind 'enter:become(git checkout {-1})' --height 40% --layout reverse
}