# Aliases
alias ls='eza --color=always'
alias l='eza --color=always'
alias ll='eza -lh'
alias la='eza -lha'
alias cat="bat"
alias path='echo -e ${PATH//:/\\n}' # Print each PATH entry on a separate line
alias c=clear
alias update="sudo apt update && sudo apt upgrade -y"
alias vim=nvim

# Set up the prompt
PROMPT="
%1~ %L %# "

# autoload -Uz promptinit
# promptinit
# prompt adam1

# $PATH's
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

. "$HOME/.cargo/env" 

export PATH="/opt/nvim-linux-x86_64/bin:$PATH"

# Added by `rbenv init` on Thu Dec  5 10:45:07 -03 2024
eval "$(~/.rbenv/bin/rbenv init - --no-rehash zsh)"

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# --- Locale Settings for Developers ---

# Define a interface e mensagens como Inglês Americano
export LANG=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export LANGUAGE=

# Mantém a compatibilidade de caracteres (acentos, cedilha) 
# É melhor usar en_US.UTF-8 aqui para evitar bugs em scripts que não tratam bem pt_BR
export LC_CTYPE=en_US.UTF-8

# Formatos Regionais Brasileiros (Data, Moeda, Números, Papel)
export LC_NUMERIC=pt_BR.UTF-8
export LC_TIME=pt_BR.UTF-8
export LC_MONETARY=pt_BR.UTF-8
export LC_PAPER=pt_BR.UTF-8
export LC_MEASUREMENT=pt_BR.UTF-8

# Ordenação de arquivos (Case-sensitive e regras de acentuação)
# Muitos devs preferem 'C' aqui para que a ordem seja estritamente binária
export LC_COLLATE=en_US.UTF-8

# Limpa o resto para evitar heranças indesejadas
export LC_NAME=pt_BR.UTF-8
export LC_ADDRESS=pt_BR.UTF-8
export LC_TELEPHONE=pt_BR.UTF-8
export LC_IDENTIFICATION=pt_BR.UTF-8
export LC_ALL=
