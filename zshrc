alias .=source

. "$ADOTDIR/.antigen.zsh"
. "$HOME/.local/fzf/shell/completion.zsh"
. "$HOME/.local/fzf/shell/key-bindings.zsh"

antigen use oh-my-zsh

antigen bundle git
antigen bundle gitfast
antigen bundle git-extras

antigen bundle zsh-users/zsh-autosuggestions

antigen theme agnoster
antigen apply

######### PROMPT ######### 

prompt_dir() {
   prompt_segment 14 $CURRENT_FG '%~'
}

alias ls='ls --group-directories-first --color=tty'