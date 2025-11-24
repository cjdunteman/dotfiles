# zsh config

################
# ALIASES
################

# git
alias gs="git status"
alias gb="git branch"
alias gpull='git pull origin'
alias gpush='git push origin'
alias gs='git status'
alias ga='git add'
alias gc="git commit -m $1"
alias lg='lazygit'

# file navigation
alias ..='cd ..'

# file exploring
alias lsla='ls  -la'
alias lsa='ls -A'

# other aliases
alias cat='bat'

# starship
eval "$(starship init bash)"