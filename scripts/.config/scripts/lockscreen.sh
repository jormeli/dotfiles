#!/bin/bash
scrot -e 'convert -scale 5%  -scale 2000% $f ~/lockbg.png;rm $f'
convert -gravity center -composite ~/lockbg.png ~/arch-linux.png ~/lockfinal.png
i3lock -u -i ~/lockbg.png
rm ~/lockbg.png ~/lockfinal.png
