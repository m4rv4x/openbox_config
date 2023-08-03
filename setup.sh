#!/bin/bash
echo "M4RV4X OPENBOX CONFIG DEPLOY"
echo "[*] Installing depedencies..."
sudo apt install openbox lightdm clipman
echo "[*] Copying autostart config..."
sudo cp config/autostart ~/.config/openbox/autostart
echo "[*] Copying lightdm config..."
sudo cp etc/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
echo "[*] Installing tint2..."
sudo apt install tint2
echo "[*] Copying tint2 config..."
cp /usr/share/tint2/vertical-dark-transparent.tint2rc .config/tint2/.tint2rc
echo "[*] Installing applets..."
sudo apt install volumeicon-alsa xfce4-clipman
echo "[*] Installing wallpapers..."
sudo apt install mate-backgrounds nitrogen
echo "[*] Setting up wallpapers..."
nitrogen --set-scaled /usr/share/backgrounds/mate/desktop/Ubuntu-Mate-Radioactive-no-logo.png
echo "[*] Reloading config..."
openbox --restart
echo "[!] Done, Goodbye"
