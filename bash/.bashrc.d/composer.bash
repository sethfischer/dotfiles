# # Make commands installed with 'composer global require' available.
if [ -d "$HOME/.config/composer/vendor/bin" ] ; then
    PATH="$PATH:$HOME/.config/composer/vendor/bin"
fi
