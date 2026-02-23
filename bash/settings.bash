# Configurações de Histórico
export HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
export HISTSIZE=5000
export HISTIGNORE="clear:bg:fg:cd:cd -:cd ..:c:exit:date:w:* --help:ls:l:ll:lll:la:h"
