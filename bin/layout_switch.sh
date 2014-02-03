#!/bin/zsh

if [[ -n "$1" ]]; then
	setxkbmap $1 -option ctrl:swapcaps
else
	layout=$($HOME/.xmonad/bin/show_layout.sh)
	case $layout in
		us)
			setxkbmap gr -option ctrl:swapcaps
			;;
		*)
			setxkbmap us -option ctrl:swapcaps
			;;
	esac
fi

# remap capslock to control
#xmodmap $HOME/.xmonad/.xmodmap
