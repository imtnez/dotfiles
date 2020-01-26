alias .=source

[ -e ~/.profile ] && emulate bash -c 'source ~/.profile'

. "$ADOTDIR/.antigen.zsh"

antigen use oh-my-zsh

antigen bundle git
antigen bundle gitfast
antigen bundle git-extras
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

alias tmux='tmux -u'

######### PROMPT ######### 

PROMPT='%{$fg_bold[blue]%}%n@%m%{$reset_color%} %{$fg[green]%}%(!.%1~.%~) $(git_prompt_info)%{$reset_color%}$ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "

alias ls='ls --group-directories-first --color=tty'

. "$HOME/.local/fzf/shell/completion.zsh"
. "$HOME/.local/fzf/shell/key-bindings.zsh"

