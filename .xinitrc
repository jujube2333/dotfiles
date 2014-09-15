#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

/usr/bin/VBoxClient-all

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xset +fp /usr/share/fonts/local
xset fp rehash

XTerm*background    : black
XTerm*foreground    : white

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

xsetroot -cursor_name left_ptr
setxkbmap -layout jp
exec xmonad
# exec xterm
