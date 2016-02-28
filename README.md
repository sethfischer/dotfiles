sethfischer's dotfiles
======================

  * [atom][1]
  * [bash][2]
  * [composer][3]
  * [conky][4]
  * [editorconfig][5]
  * [git][6] 1.7.10+
  * [tmux][7] 1.6+
  * [vim][8]


Install
-------

Install [GNU Stow][9]:

```sh
sudo apt-get install stow
```

Clone the repository:

```sh
git clone https://github.com/sethfischer/dotfiles.git ~/.dotfiles
```

Dotfiles are symlinked to the home directory with GNU Stow. The examples
below demonstrate how GNU Bash configuration is enabled and disabled.

Enable Bash configuration:

```sh
cd ~/.dotfiles
stow bash
```

Disable Bash configuration:

```sh
cd ~/.dotfiles
stow -D bash
```

The following utilities require additional configuration.


### Terminal emulator

The Solarized Colorscheme for Vim and dircolors require the terminal emulator
to be configured to use 256 colours.

In Gnome Terminal select `Run custom command instead of my shell` and enter the
following custom command:

```
env TERM=xterm-256color bash
```


### atom

Install the community package [`package-sync`][10] and execute the command
`package-sync:sync`.


### git

Git configuration is enabled with an include.path variable (git 1.7.10+) in
`~/.gitconfig`.

```
[user]
    name = Your Name
    email = user@example.com
[include]
    path = .gitrc.d/gitconfig
```


### tmux

Clone [Tmux Plugin Manager][11]:

```sh
mkdir -p ~/.tmux/plugins
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```


### vim

To use the [Solarized Colorscheme for Vim][12] the terminal emulator should
also be using a [Solarized Colorscheme][13].

  * [Solarized Colorscheme for Gnome Terminal][14]
  * [Solarized colour scheme for the Xfce4 Terminal][15]


[1]: https://atom.io/
[2]: https://www.gnu.org/software/bash/
[3]: https://getcomposer.org/
[4]: https://github.com/brndnmtthws/conky
[5]: http://editorconfig.org/
[6]: https://git-scm.com/
[7]: https://tmux.github.io/
[8]: http://www.vim.org/
[9]: http://www.gnu.org/software/stow/
[10]: https://atom.io/packages/package-sync
[11]: https://github.com/tmux-plugins/tpm
[12]: https://github.com/altercation/vim-colors-solarized
[13]: http://ethanschoonover.com/solarized
[14]: https://github.com/Anthony25/gnome-terminal-colors-solarized
[15]: https://github.com/sgerrand/xfce4-terminal-colors-solarized
