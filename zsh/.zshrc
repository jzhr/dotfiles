source "/opt/homebrew/opt/spaceship/spaceship.zsh"

# oh my zsh
plugins=(git zsh-autosuggestions zsh-syntax-highlighting tmux)
ZSH_TMUX_AUTOSTART=true
source $ZSH/oh-my-zsh.sh

# aliases
alias v="nvim"

# nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# pyenv
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# zoxide
eval "$(zoxide init zsh)"

# colima
export DOCKER_HOST="unix://$HOME/.colima/docker.sock"
