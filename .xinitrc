# load Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# wallpaper
feh --no-fehbg --bg-fill ~/.config/Comets.png &

# compositor
picom &

# status
dwmblocks &

# notifications
dunst &

# clipboard daemon
clipcatd &

# window manager
exec dwm
