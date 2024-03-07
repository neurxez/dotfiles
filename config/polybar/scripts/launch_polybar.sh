#!/usr/bin/env sh

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -c ~/.config/bspwm/themes/bspwm_nord/polybar/config.ini left &
polybar -c ~/.config/bspwm/themes/bspwm_nord/polybar/config.ini xwindow &
polybar -c ~/.config/bspwm/themes/bspwm_nord/polybar/config.ini center &
polybar -c ~/.config/bspwm/themes/bspwm_nord/polybar/config.ini tray &
polybar -c ~/.config/bspwm/themes/bspwm_nord/polybar/config.ini right &
polybar -c ~/.config/bspwm/themes/bspwm_nord/polybar/config.ini poweroff &
