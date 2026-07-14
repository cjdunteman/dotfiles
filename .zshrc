# starship
eval "$(starship init zsh)"

export GPG_TTY=$(tty)
gpgconf --launch gpg-agent
export GPG_TTY=$(tty)

# ssh agent
eval "$(ssh-agent -s)"
