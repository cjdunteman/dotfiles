# Specify default editor. Possible values: vim, nano, ed etc.

# Java
export JAVA_HOME=$(/usr/libexec/java_home)

# Flutter
export PATH=$PATH:"/Users/cjdunteman/Developer/flutter/bin"

# Uncomment to enable pyenv
eval "$(pyenv init -)"

# added by Anaconda3 2019.10 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/cjdunteman/opt/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/cjdunteman/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/cjdunteman/opt/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/cjdunteman/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"

alias gs="git status"
alias gp="git pull"
alias gb="git branch"
alias ga.="git add ."
alias gc="git commit -m $1"
alias gp="git push"
alias gpo="git push origin $1"
