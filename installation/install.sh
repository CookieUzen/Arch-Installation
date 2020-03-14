#!/bin/bash

cd yay
makepkg -si

AURpackages=" zsh neovim qutebrowser brave mpv inkscape GIMP aria2 axel wget cmus bspwm compton-tryone-git polybar texlive-most pywal neofetch cmatrix awesome-terminal-fonts xorg xorg-server xorg-xinit python ctags"
yay -S $AURpackages
