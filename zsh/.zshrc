# Path to your oh-my-zsh installation.
# NOTE : Disabled Shell Prompt: Currently using Starship
# NOTE: using oh-my-zsh only for zsh plugins management
export ZSH="$HOME/.oh-my-zsh"

export TMUX_CONF=~/.config/tmux/tmux.conf

export PATH=$HOME/bin:/usr/local/bin:$PATH

# NVM Path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 

# Go Path
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export PATH=$PATH:$(go env GOPATH)/bin

ZSH_THEME="robbyrussell"

plugins=(
    git 
    tmux
)

source $ZSH/oh-my-zsh.sh

# Starship 
eval "$(starship init zsh)"
export STARSHIP_CONFIG=$HOME/.config/starship/starship.tomleval

# NOTE: Zoxide
eval "$(zoxide init zsh)"

# NOTE: FZF
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

# FZF
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git --exclude node_modules"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git --exclude node_modules"

export FZF_DEFAULT_OPTS="--height 50% --layout=default --border --color=hl:#2dd4bf"

# Setup fzf previews
export FZF_CTRL_T_OPTS="--preview 'bat --color=always -n --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --icons=always --tree --color=always {} | head -200'"

# fzf preview for tmux
export FZF_TMUX_OPTS=" -p90%,70% "  

# Next level of an ls 
# options :  --no-filesize --no-time --no-permissions 
alias ls="eza --no-filesize --long --color=always --icons=always --no-user" 

fastfetch

