# 1. Detecta o shell atual (extrai o nome do processo atual)
CURRENT_SHELL=$(basename "$($SHELL -c 'echo $0' 2>/dev/null || echo $SHELL)")
# Fallback caso o método acima falhe em algum ambiente específico:
[[ -n "$ZSH_VERSION" ]] && CURRENT_SHELL="zsh"
[[ -n "$BASH_VERSION" ]] && CURRENT_SHELL="bash"

# --- Caminhos Comuns ---
path_prepend "$HOME/bin"
path_prepend "$HOME/.local/bin"
path_prepend "/opt/nvim-linux-x86_64/bin"

# --- Pyenv (Dinâmico) ---
export PYENV_ROOT="$HOME/.pyenv"
if [[ -d "$PYENV_ROOT/bin" ]]; then
    path_prepend "$PYENV_ROOT/bin"
    # O pyenv init aceita o nome do shell como argumento
    eval "$(pyenv init - "$CURRENT_SHELL")"
fi

# --- FZF (Dinâmico) ---
if [[ -d "$HOME/.fzf" ]]; then
    path_prepend "$HOME/.fzf/bin"
    # FZF tem flags específicas: --bash ou --zsh
    if [[ "$CURRENT_SHELL" == "zsh" ]]; then
        eval "$(fzf --zsh)"
    else
        eval "$(fzf --bash)"
    fi
fi

# --- Cargo/Rust ---
[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"

# --- NVM (Lazy Loading para performance) ---
export NVM_DIR="$HOME/.nvm"
if [[ -s "$NVM_DIR/nvm.sh" ]]; then
    # Em vez de carregar tudo agora, criamos um placeholder
    nvm() {
        unset -f nvm node npm npx
        . "$NVM_DIR/nvm.sh"
        nvm "$@"
    }
    node() { unset -f nvm node npm npx; . "$NVM_DIR/nvm.sh"; node "$@"; }
    npm()  { unset -f nvm node npm npx; . "$NVM_DIR/nvm.sh"; npm "$@"; }
fi

