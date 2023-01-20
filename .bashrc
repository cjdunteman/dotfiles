# CJ Dunteman
# 
# My zsh config.

export PATH=/bin:/usr/bin:/usr/local/bin:${PATH}

# add packages installed using --user
PATH="$HOME/.local/bin:$PATH"

export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

# file navigation
alias ..='cd ..'

# file exploring
alias lsla='ls  -la'
alias lsa='ls -A'

# git
alias gs="git status"
alias gb="git branch"
alias gpull='git pull origin'
alias gpush='git push origin'
alias gs='git status'
alias ga='git add'
alias gc="git commit -m $1"
alias lg='lazygit'

# other aliases
alias bat='batcat'

. "$HOME/.cargo/env"

export GPG_TTY=$(tty)

# starship
eval "$(starship init bash)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

