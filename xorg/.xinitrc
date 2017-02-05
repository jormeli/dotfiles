#!/bin/sh

xset -b

xsetroot -cursor_name left_ptr

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
