sethfischer's dotfiles
======================

Install
-------

Install [GNU Stow][1]:

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

Git configuration is enabled with an include.path variable (git 1.7.10+) in
`~/.gitconfig`.

```
[user]
    name = Your Name
    email = user@example.com
[include]
    path = .gitrc.d/gitconfig
```

[1]: http://www.gnu.org/software/stow/

