# Desktop

Is a repository that is used to backup my desktop configuration files

composed of :

- [Archlinux](https://archlinux.org/)   == Based distros
- [Hyprland](https://hyprland.org/)   == Window Manager
- [zsh](https://ohmyz.sh/)            == Shell
- [nemo](https://github.com/linuxmint/nemo)        == File Manager
- [EWW](https://github.com/elkowar/eww)         == Bar
- [Alalcritty](https://alacritty.org/)   == Terminal
- [Neovim](https://neovim.io/)     == Main IDE

#### **DEPEDENCIES**

install dependencies, e.g on Arch

```bash
yay -S hyprland eww-wayland ttf-ubuntu-nerd socat jq acpi inotify-tools\
  bluez pavucontrol brightnessctl playerctl nm-connection-editor imagemagick \
  gjs gnome-bluetooth-3.0 upower networkmanager gtk3 \
  wl-gammactl wlsunset wl-clipboard hyprpicker hyprshot blueberry \
  polkit-gnome
```



#### INSTALL

clone repo and copy config

```bash
git clone https://github.com/sukrim99/Desktop.git
cd Desktop
cp -r ~/Desktop/* ~/.config/
```
