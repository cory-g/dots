#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
userpath=$HOME/.path

export GOPATH="$HOME/src/go"

#
# merge in defaults and keymaps
#

# System resources
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

# System keys
if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

# User resources
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

# User keys
if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# modify path
# export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

if [ -f "$userpath" ]; then
    while read -r line; do
        [[ "$line" =~ ^#.*$ ]] && continue
        export PATH="$(eval echo ${line}):$PATH"
    done < "$userpath"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xset +fp $HOME/.local/share/fonts
xset fp rehash

# start daemons and other stuff
xscreensaver &
sxhkd &
dunst &
compton &
insync start &
compton -b -C --respect-prop-shadow &
greenclip daemon &
mpd

# start session
exec i3
# exec herbstluftwm --locked
# exec dwm
