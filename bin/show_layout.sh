#!/bin/zsh

layout=$(setxkbmap -query | awk 'END{print $2}')

echo $layout
