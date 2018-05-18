#!/bin/bash
#scrot -e 'convert -scale 5%  -scale 2000% $f ~/lockbg.png;rm $f'
scrot -e 'convert -blur 0x10 $f ~/lockbg.png;rm $f'
convert -gravity center -geometry -1280+0 -composite ~/lockbg.png ~/nvidia-vector-logo.png ~/lockfinal.png
convert -gravity center -geometry +1280+0 -composite ~/lockfinal.png ~/nvidia-vector-logo.png ~/lockfinal.png
i3lock -u -i ~/lockfinal.png
rm ~/lockbg.png ~/lockfinal.png
