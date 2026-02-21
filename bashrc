# this file gets run in two cases:
# 1. non-login interactive shell
# 2. remote shell (over ssh or similar)

# #2 happens when you run "ssh user@host bash" explicitly.
# in this case, /etc/bash.bashrc has not been previous executed (unlike #1).
# however, we assume that #2 is a recovery mode, so we don't want to do much.
# (also, my google-fu didn't find a way to distinguish them)

. ~/.bash/env
. ~/.bash/interactive

# Aliases e Prompt
[ -f ~/.shell/aliases.sh ] && . ~/.shell/aliases.sh
[ -f ~/.bash/prompt.bash ] && . ~/.bash/prompt.bash

# Bash Completion
[ -f ~/.bash_completion/alacritty ] && . ~/.bash_completion/alacritty

# Configurações de Histórico
export HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
export HISTSIZE=5000
export HISTIGNORE="clear:bg:fg:cd:cd -:cd ..:c:exit:date:w:* --help:ls:l:ll:lll:la:h"


export COLORTERM=truecolor
