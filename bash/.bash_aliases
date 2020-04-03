# grep
alias g='grep -irl --exclude-dir=".git"'


# ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# colordiff
if [ -x "$(command -v colordiff)" ]; then
    alias diff=colordiff
fi


# pygmentize
if [ -x "$(command -v pygmentize)" ]; then
    alias pyg=pygmentize
fi


# cd into user tmp directory
if [ -d "${HOME}/tmp" ]; then
    alias cdt="cd ${HOME}/tmp"
fi

# Add an "alert" alias for long running commands.  Use like so:
# sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
