# Load RVM into a shell session as a function.
if [ -s "$HOME/.rvm/scripts/rvm" ] ; then
    source "$HOME/.rvm/scripts/rvm"
fi

# Add RVM to PATH for scripting.
if [ -d "$HOME/.rvm/bin" ] ; then
    PATH="$PATH:$HOME/.rvm/bin"
fi
