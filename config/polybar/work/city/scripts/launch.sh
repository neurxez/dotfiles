#!/usr/bin/env sh

# Для runit
pkill polybar && sleep 1
polybar -c ~/.config/polybar/config.ini &

