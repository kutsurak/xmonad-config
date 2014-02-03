#!/bin/zsh

if [[ -n "$1" ]]; then
	setxkbmap $1
else
	layout=$(setxkbmap -query | awk 'END{print $2}')
	case $layout in
		us)
			setxkbmap gr
			;;
		*)
			setxkbmap us
			;;
	esac
fi

# remap capslock to control
xmodmap ~/.xmodmap
