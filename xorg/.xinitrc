#!/bin/sh

xset -b

xsetroot -cursor_name left_ptr

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

setxkbmap 'en_US'

export PATH=$PATH:~/.local/bin

exec i3
