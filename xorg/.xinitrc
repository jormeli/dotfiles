setxkbmap 'fi'
xrdb -merge  ~/.Xresources
xrandr --dpi 192
xmodmap -e "keycode 133 = Escape"
compton -b
feh --bg-center ~/80s+City.jpg
exec i3
