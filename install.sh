#!/usr/bin/bash

echo "WELCOME! Now we will install and setup Hyprland on an Arch-based system"
echo "Create by Phunt_Vieg_"

sudo pacman -Syu --noconfirm

cd ~

echo "Install yay"
sudo pacman -S --noconfirm --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ~
rm -rf ~/yay

echo "Install package"
sudo pacman -S --noconfirm hyprland ghostty stow nemo swww waybar rofi rofi-emoji hyprlock swaync discord
yay -S --noconfirm wlogout hyprshot brave-bin spotify cava visual-studio-code-bin

echo "Install JetBrainsMono Nerd Font"
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip
rm JetBrainsMono.zip
fc-cache -fv
cd ~

echo "Stow dotfiles"
git clone https://github.com/ViegPhunt/Arch-Hyprland.git ~/Arch-Hyprland
mkdir -p ~/dotfiles && mv ~/Arch-Hyprland/dotfiles/* ~/dotfiles/
rm -rf ~/Arch-Hyprland
cd ~/dotfiles
stow ghostty hypr rofi wallpaper waybar wlogout
cd ~

echo "Have a great time with Hyprland!!!"
