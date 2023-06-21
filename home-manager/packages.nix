{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # tools
    bat exa 
    socat jq htop acpi inotify-tools
    wl-gammactl wlsunset wl-clipboard hyprpicker
    pavucontrol blueberry bluez brightnessctl playerctl imagemagick networkmanager
    # gjs gnome.gnome-bluetooth upower networkmanager gtk3 pango cairo harfbuzz gdk-pixbuf

    # fun
    fortune jp2a pywal
    glow vhs gum slides charm skate
    yabridge yabridgectl wine-staging

    wezterm 
    vscode
    distrobox
    sassc glib

    # file manager
    ranger cinnamon.nemo

    # langs
    nodePackages_latest.typescript
    nodejs cargo rustc go
    agda jdk
  ];
}
