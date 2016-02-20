# ls
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# colordiff
if [ -n "$(type -P colordiff)" ]; then
    alias diff=colordiff
fi

