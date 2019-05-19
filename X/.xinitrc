#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

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
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xset +fp $HOME/.local/share/fonts
xset fp rehash

# set screen DPI
## xrandr --dpi 125.37

# start daemons and other stuff
xscreensaver &
sxhkd &
dunst &

# start system tray icons
pamac-tray-appindicator &
volumeicon &
nm-applet &

# start session
exec i3
