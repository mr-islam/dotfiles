
scrot 'lockbg.png' -e 'convert -resize 20% -fill "#282828" -colorize 50% -blur 0x1 -resize 500% $f ~/lockbg.png'

convert -gravity center -composite ~/lockbg.png /home/naved/icon.png ~/lockfinal.png

i3lock -u -i ~/lockfinal.png

rm ~/lockfinal.png ~/lockbg.png lockbg.png
