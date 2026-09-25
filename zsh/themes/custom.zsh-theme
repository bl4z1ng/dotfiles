# -*- sh -*- vim:set ft=sh ai et sw=4 sts=4:
# It might be bash like, but I can't have my co-workers knowing I use zsh
PROMPT='%n@%m %F{green}%2~%f $(git_prompt_info)%(!.#.$) '

ZSH_THEME_GIT_PROMPT_PREFIX="%F{red}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%f"
