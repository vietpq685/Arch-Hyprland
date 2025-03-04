#!/usr/bin/bash

echo "WELCOME! Now we will install and setup Hyprland on an Arch-based system"
echo "Create by VietPQ"

sudo pacman -Syu --noconfirm

cd ~

echo "Install yay"
sudo pacman -S --noconfirm --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ~
rm -rf ~/yay

echo "Install Hyprland and necessary components"
sudo pacman -S --noconfirm hyprland ghostty stow nemo swww waybar rofi rofi-emoji hyprlock swaync discord

echo "Stow dotfiles"
git clone https://github.com/vietpq685/Arch-Hyprland.git ~/Arch-Hyprland
mkdir -p ~/dotfiles && mv ~/Arch-Hyprland/dotfiles/* ~/dotfiles/
rm -rf ~/Arch-Hyprland
cd ~/dotfiles
stow ghostty hypr rofi wallpaper waybar wlogout
cd ~

echo "Have a great time with Hyprland!!!"
