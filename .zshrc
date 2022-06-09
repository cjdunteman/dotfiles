# CJ Dunteman
# 
# My bash config.

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
alias ga='git add .'
alias gc="git commit -m $1"
alias lg='lazygit'

# other aliases
alias bat='batcat'

export GPG_TTY=$(tty)

eval "$(starship init bash)"
