#!/bin/bash
echo "M4RV4X OPENBOX CONFIG DEPLOY"
echo "[*] Installing depedencies..."
sudo apt install openbox lightdm clipman
echo "[*] Copying autostart..."
sudo cp config/autostart ~/.config/openbox/autostart
echo "[*] Installing tint2..."
sudo apt install tint2
cp /usr/share/tint2/vertical-dark-transparent.tint2rc .config/tint2/.tint2rc
echo "[*] Installing wallpapers..."
sudo apt install mate-backgrounds nitrogen
nitrogen --set-scaled /usr/share/backgrounds/mate/desktop/Ubuntu-Mate-Radioactive-no-logo.png
echo "[!] Done, Reloading..."
openbox --restart
