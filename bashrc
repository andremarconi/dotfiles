# this file gets run in two cases:
# 1. non-login interactive shell
# 2. remote shell (over ssh or similar)

# #2 happens when you run "ssh user@host bash" explicitly.
# in this case, /etc/bash.bashrc has not been previous executed (unlike #1).
# however, we assume that #2 is a recovery mode, so we don't want to do much.
# (also, my google-fu didn't find a way to distinguish them)

# Carrega as funções
[ -f ~/.shell/functions.sh ] && . ~/.shell/functions.sh

# Configura o histórico
[ -f ~/.bash/settings.bash ] && . ~/.bash/settings.bash

# Carrega os paths
[ -f ~/.shell/paths.sh ] && . ~/.shell/paths.sh

# Aliases
[ -f ~/.shell/aliases.sh ] && . ~/.shell/aliases.sh

# plugins
[ -f ~/.shell/plugins.sh ] && . ~/.shell/plugins.sh

#Prompt
[ -f ~/.bash/prompt.bash ] && . ~/.bash/prompt.bash

# Bash Completion
[ -f ~/.bash_completion/alacritty ] && . ~/.bash_completion/alacritty

# export COLORTERM=truecolor
