#!/bin/sh

#xrandr --output DP-0 --off --output DP-1 --off --output HDMI-0 --off --output DP-2 --mode 2560x1440 --pos 0x0 --rotate normal --output DP-3 --off --output HDMI-1 --off --output DP-4 --off --output DP-5 --off --output None-1-1 --off
xrdb merge ~/.Xresources 
xbacklight -set 10 &
feh --bg-fill ~/Wallpapers/wallpaper.jpg &
xset r rate 200 50 &
picom &
lxpolkit &


~/.config/chadwm/scripts/bar.sh &

if test -z "${DBUS_SESSION_BUS_ADDRESS}"; then
    eval `dbus-launch --sh-syntax --exit-with-session`
fi
while type dwm >/dev/null; do dwm && continue || break; done
