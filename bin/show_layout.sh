#!/bin/zsh

layout=$(setxkbmap -query | grep '^layout' | awk '{print $2}')

echo $layout
