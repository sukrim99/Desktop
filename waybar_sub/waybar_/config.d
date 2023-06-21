{
    "height": 30, // Waybar height (to be removed for auto height)
    "layer": "top", // Waybar at top layer
    "margin-top": 6,
    "margin-left": 10,
    "margin-bottom": 0,
    "margin-right": 10,
    "spacing": 5, // Gaps between modules (4px)
    "modules-left": ["custom/launcher", "cpu", "memory", "wlr/workspaces","custom/kernel-version", "custom/weather"],
    "modules-center": ["custom/spotify"],
    "modules-right": ["tray", "backlight", "pulseaudio", "network", "battery", "clock", "custom/power-menu"],
    "wlr/workspaces": {
      "format": "{icon}",
      "on-click": "activate",
      "format-icons": {
        "1": "",
        "2": "",
        "3": "",
        "4": "",
        "5": "",
        "urgent": "",
        "active": "",
        "default": ""
      }
    },
    "hyprland/window": {
        "format": "{}"
    },
    "tray": {
        "spacing": 10
    },
    "clock": {
        "format": "<span color='#1b242b'> </span>{:%a %b %d}",
        "format-alt": "<span color='#1b242b'> </span>{:%I:%M %p}",
        "tooltip-format": "<big>{:%B %Y}</big>\n<tt><small>{calendar}</small></tt>",
    },

    "cpu": {
      "interval": 10,
      "format": "󰻠 {}%",
      "max-length": 10,
      "on-click": "bash /bin/htop",
    },
    "memory": {
        "interval": 30,
        "format": "󰞰 {}%",
        "format-alt":" {used:0.1f}G",
        "max-length": 10,
    },
    "backlight": {
        "device": "DP-1",
        "format": "{icon} {percent}%",
        "format-icons": ["", "", "", "", "", "", "", "", ""],
        "on-click": "",
    },
    "network": {
        "format-wifi": "直 {signalStrength}%",
        "format-ethernet": " wired",
        "format-disconnected": "睊",
        "on-click": "bash ~/.config/waybar/scripts/rofi-wifi-menu.sh",
        "format-disconnected": "Disconnected  ",
    },

    "custom/kernel-version": {

        "exec": "uname -r",
        "interval": 60,
        "return-type": "stdout",
        "format": " {output}"
    },

    "pulseaudio": {
        "format": "{icon} {volume}%",
        "format-bluetooth": "  {volume}%",
        "format-bluetooth-muted": " ",
        "format-muted": "婢",
        "format-icons": {
            "headphone": "",
            "hands-free": "",
            "headset": "",
            "phone": "",
            "portable": "",
            "car": "",
            "default": ["", "", ""]
        },
        "on-click": "pavucontrol"
    },

    "bluetooth": {
        "on-click": "~/.config/waybar/scripts/rofi-bluetooth &",
        "format": " {status}",
    },

    "battery": {
      "bat": "BAT0",
      "adapter": "ADP0",
      "interval": 60,
      "states": {
          "warning": 30,
          "critical": 15
      },
      "max-length": 20,
      "format": "{icon} {capacity}%",
      "format-warning": "{icon} {capacity}%",
      "format-critical": "{icon} {capacity}%",
      "format-charging": "<span font-family='Font Awesome 6 Free'></span> {capacity}%",
      "format-plugged": "  {capacity}%",
      "format-alt": "{icon} {time}",
      "format-full": "  {capacity}%",
      "format-icons": [" ", " ", " ", " ", " "],
    },
    "custom/weather": {
      "exec": "python3 ~/.config/waybar/scripts/weather.py",
      "restart-interval": 300,
      "return-type": "json",
      "on-click": "xdg-open https://weather.com/en-IN/weather/today/l/a319796a4173829988d68c4e3a5f90c1b6832667ea7aaa201757a1c887ec667a"
    },   

   "custom/spotify": {
    "exec": "python3 ~/.config/waybar/scripts/mediaplayer.py --player spotify",
    "format": "{}  ",
    "return-type": "json",
    "on-click": "playerctl play-pause",
    "on-double-click-right": "playerctl next",
    "on-scroll-down": "playerctl previous",
    },
    "custom/power-menu": {
        "format": " <span color='#1b242b'> </span>",
        "on-click": "bash ~/.config/waybar/scripts/power-menu/powermenu.sh",
    }, 
    "custom/launcher": {
        "format": " <span color='#1b242b'> </span>",
        "on-click": "rofi -show drun",
    },
}

