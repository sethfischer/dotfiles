sethfischer's dotfiles
======================

  * [atom][1]
  * [bash][2]
  * [composer][3]
  * [conky][4]
  * [editorconfig][5]
  * [git][6]
  * [tmux][7]
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

Clone [Tmux Plugin Manager][10]:

```sh
mkdir -p ~/.tmux/plugins
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```


[1]: https://atom.io/
[2]: https://www.gnu.org/software/bash/
[3]: https://getcomposer.org/
[4]: https://github.com/brndnmtthws/conky
[5]: http://editorconfig.org/
[6]: https://git-scm.com/
[7]: https://tmux.github.io/
[8]: http://www.vim.org/
[9]: http://www.gnu.org/software/stow/
[10]: https://github.com/tmux-plugins/tpm
