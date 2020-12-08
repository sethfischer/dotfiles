======================
sethfischer's dotfiles
======================


Install
-------

Install `GNU Stow`_:

.. code-block:: shell

    sudo apt-get install stow


Clone the repository:

.. code-block:: shell

    git clone https://github.com/sethfischer/dotfiles.git ~/.dotfiles


Dotfiles are symlinked to the home directory with GNU Stow. The examples below
demonstrate how GNU Bash configuration is enabled and disabled.

Enable Bash configuration:

.. code-block:: shell

    cd ~/.dotfiles
    stow bash


Disable Bash configuration:

.. code-block:: shell

    cd ~/.dotfiles
    stow -D bash


The following utilities require additional configuration.


Terminal emulator
-----------------

The Solarized Colorscheme for Vim and dircolors require the terminal emulator
to be configured to use 256 colours.

In Gnome Terminal select `Run custom command instead of my shell` and enter the
following custom command:

.. code-block:: shell

    env TERM=xterm-256color bash


atom
----

Install the community package `package-sync`_ and execute the command
`package-sync:sync`.


git
---

Git configuration is enabled with an include.path variable (git 1.7.10+) in
`~/.gitconfig`.

.. code-block:: shell

    git config --global user.name "Your Name"
    git config --global user.email "user@example.com"
    git config --global include.path ".gitrc.d/gitconfig"
    cd ~/.dotfiles
    stow git


tmux
----

Clone `Tmux Plugin Manager`_:

.. code-block:: shell

    mkdir -p ~/.tmux/plugins
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


vim
---

To use the `Solarized Colorscheme for Vim`_ the terminal emulator should also
be using a `Solarized Colorscheme`_.

* `Solarized Colorscheme for Gnome Terminal`_
* `Solarized colour scheme for the Xfce4 Terminal`_

On startup vim will clone `Vundle`_ into `~/.vim/bundle/Vundle.vim` Within vim
run `:PluginInstall`.


.. _`GNU Stow`: http://www.gnu.org/software/stow/
.. _`package-sync`: https://atom.io/packages/package-sync
.. _`Tmux Plugin Manager`: https://github.com/tmux-plugins/tpm
.. _`Solarized Colorscheme for Vim`: https://github.com/altercation/vim-colors-solarized
.. _`Solarized Colorscheme`: http://ethanschoonover.com/solarized
.. _`Solarized Colorscheme for Gnome Terminal`: https://github.com/Anthony25/gnome-terminal-colors-solarized
.. _`Solarized colour scheme for the Xfce4 Terminal`: https://github.com/sgerrand/xfce4-terminal-colors-solarized
.. _`Vundle`: https://github.com/VundleVim/Vundle.vim
