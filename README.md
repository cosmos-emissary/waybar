# Waybar Config
I am using Manjora Sway and I tested this configuration on Arch sway, so the configuration file works on these distributions. It will probably work on other distributions, but you may need to make some adjustments.

# Picture
![swappy-20241022_185059](https://github.com/user-attachments/assets/28c22192-0cac-47d2-9e09-0cedfd27c0fd)

# Installation
Firstly clone repo

ARCH
```bash
sudo pacman -S git
mkdir git
cd git
git clone https://github.com/cosmos-emissary/waybar.git
```
DEBIAN
```bash
sudo apt update && apt upgrade
sudo apt install git
mkdir git
cd git
git clone https://github.com/cosmos-emissary/waybar.git
```
FEDORA
```bash
sudo dnf update
sudo dnf install git
mkdir git
cd git
git clone https://github.com/cosmos-emissary/waybarconfig.git
```
Now we can run script
```bash
cd waybarconfig

chmod +x winstall.sh
./winstall.sh
```
Its Done
