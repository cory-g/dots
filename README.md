# Arch Linux .dotfiles

![Screenshot](scrot.png)

> This repo contains a little more than my dotfiles. Within are many of my settings, scripts, templates, structures, and opinions that will likely be useful to very few except myself. There is probably quite a bit amiss about this setup but it works for me.

#### Notes

- I'm not responsible for you messing stuff up by using my dotfiles. Not that anything will get messed up but you never know.
- `~/.local/bin` needs to be added to `$PATH`. I do this in my `~/.path` file which is sourced by `~/.xinitrc`.
- install figlet fonts from [xero on github](https://github.com/xero/figlet-fonts) to `/usr/share/figlet`.

### Basics

- OS: Arch Linux 
- Shell: fish 
- WM: i3 
- Theme: SolArc-Dark [GTK2/3] 
- Icons: Numix [GTK2/3] 
- Terminal: urxvt 
- Terminal Font: Hurmit Nerd Font Mono 

#### Packages
For a complete list of packages installed from the official repositories as well as the AUR, please click [here](https://github.com/cory-g/dots/tree/master/docs/Packages.md).

#### Partition Scheme

| NAME | SIZE | MOUNTPOINT | FSTYPE |
|---|---|---|---|
| sda | 465.8G |   |   |
| sda1 | 512M | /boot | ext4 |
| sda2 | 12G | [SWAP] | swap |
| sda3 | 453.3G | / | btrfs |
| sdb | 477G |   |   |
| sdb1 | 477G | /home | btrfs |

