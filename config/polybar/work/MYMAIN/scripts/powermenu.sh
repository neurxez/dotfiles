#! /bin/sh

rofi_cmd() {
	rofi -dmenu \
		-theme ~/.config/bspwm/themes/bspwm_nord/rofi/powermenu.rasi
}

chosen=$(printf "⏻ poweroff\n󰜉 reboot\n󰗼 exit" | rofi_cmd)

case "$chosen" in

	"⏻ poweroff") poweroff ;;
	"󰜉 reboot") reboot ;;
	"󰗼 exit") bspc quit ;;
	*) exit 1 ;;

esac
