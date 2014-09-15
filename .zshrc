PROMPT='[%*]%c%# '
export EDITOR=vim
export LANG=ja_JP.UTF-8

autoload -Uz compinit
compinit

setopt no_beep
setopt magic_equal_subst
setopt prompt_subst

autoload -U compinit; compinit
setopt auto_list
setopt auto_menu
setopt list_packed
setopt list_types
bindkey "^[[Z" reverse-menu-complete
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt bang_hist
setopt extended_history
setopt share_history
setopt hist_ignore_dups
setopt hist_reduce_blanks

export LSCOLORS=Exfxcxdxbxegedabagacad
export LS_COLORS='di=01;34:ln=01;35:so=01;ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export ZLS_COLORS=$LS_COLORS
export CLICOLOR=true
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

autoload -U colors; colors

