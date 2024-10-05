#!/bin/bash

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S ttf-ubuntu-nerd
yay -S ttf-ubuntu-mono-nerd
yay -S ttf-jetbrains-mono-nerd

sudo pacman -S xorg-xrandr
sudo pacman -S maim xclip xdotool
xrandr --output HDMI-0 --left-of HDMI-1
xrandr --output HDMI-0 --primary 

curl -sS https://starship.rs/install.sh | sh

