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
below demonstrate how the bash settings are installed and uninstalled.

Install bash settings:

```sh
cd ~/.dotfiles
stow bash
```

Uninstall bash settings:

```sh
cd ~/.dotfiles
stow -D bash
```

[1]: http://www.gnu.org/software/stow/

