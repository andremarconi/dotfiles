if command -v eza >/dev/null 2>&1; then
    # Configuração para o EZA
    alias ls='eza --group-directories-first --color=auto'
    alias ll='eza -lh --group-directories-first'
    alias la='eza -lha --group-directories-first'
    alias l='eza'
    alias lt='eza --tree --level=2' # Bônus: visualização em árvore!
else
    # Configuração para o LS padrão
    alias ls='ls --color=auto'
    alias ll='ls -lah'
    alias la='ls -A'
    alias l='ls'
fi

# Aliases to protect against overwriting
alias cp='cp -i'
alias mv='mv -i'

alias vim='nvim'
alias cat='bat'

alias update="sudo apt update && sudo apt upgrade -y"

alias c="clear"

alias h="history"

alias path='echo -e ${PATH//:/\\n}'
