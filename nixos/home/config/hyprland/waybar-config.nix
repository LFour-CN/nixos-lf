{ ... }:
{
  home.file.".config/waybar/config".text = ''
    {
      "layer": "top",
      "position": "top", 
      "height": 1, 
      "spacing": 6,
      "modules-left": ["hyprland/workspaces","idle_inhibitor","backlight","tray"],
      "modules-center": ["hyprland/window"],
      "modules-right": ["pulseaudio", "memory", "cpu", "temperature", "battery","clock"],
    
      "wlr/workspaces": {
          "format": "{icon}",
          "sort-by-number": true,
          "on-click": "activate",
          "on-scroll-up": "hyprctl dispatch workspace e+1",
          "on-scroll-down": "hyprctl dispatch workspace e-1"
      },
    
      "backlight": {
          "format": "  {percent}% {icon}  ",
          "format-icons": ["",""]
      },
    
      "battery": {
        "states": {
            // "good": 95,
            "warning": 30,
            "critical": 15
        },
        "format": " {capacity}% {icon}  ",
        "format-full": "  {capacity}% {icon}  ",
        "format-charging": "  {capacity}%   ",
        "format-plugged": "  {capacity}%   ",
        "format-alt": "{time} {icon}",
        // "format-good": "", // An empty format will hide the module
        // "format-full": "",
        "format-icons": [  ""  ,  ""  ,   ""  ,  ""  ,  ""  ]
      },
      "battery#bat2": {
         "bat": "BAT2"
      },
    
      // Workspaces
      "hyprland/workspaces" : {
          "on-click": "activate",
          "active-only": false,
          "all-outputs": true,
          "format": "{}",
          "format-icons": {
			      "urgent": "",
			      "active": "",
			      "default": ""
          },
        "persistent-workspaces": {
             "*": 9
        }
      },

      "tray": {
        "icon-size": 16,
        "spacing": 10
      },
      
      // Clock
      "clock": {
         "tooltip-format": "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>",
         "format": " {:%a %d, %b %I:%M %p }",
         "format-alt": "{:%Y-%m-%d}"
      },
    
      "cpu": {
         "interval": 1,
         "format": " {usage}%",
         "tooltip": false
      },

      "memory": {
         "interval": 1,
         "format": " {used}G",
         "tooltip": false
      },
      
      "network": {
         "interval": 1,
         "format-wifi": " {essid} ({signalStrength}%)",
         "format-ethernet": "\uf796 {bandwidthUpBits} {bandwidthDownBits}",
         "format-linked": " {ifname} (No IP)",
         "format-disconnected": "! Disconnected",
         "tooltip-format": " {ifname} {ipaddr}/{cidr} via {gwaddr}",
         "format-alt": "{ifname}: {ipaddr}/{cidr}"
      },
    
      "idle_inhibitor": {
        "format": "{icon}",
        "format-icons": {
            "activated": "     ",
            "deactivated": "     "
        }
      },
 
    	"temperature": {
        "interval": 1,
        "tooltip": false,
        "format": "   {temperatureC}°C  ",
    	},


      "pulseaudio": {
         "scroll-step": 5,
         "format": "{icon} {volume}%",
         "format-muted": "",
         "format-bluetooth": "{icon} {volume}%",
         "format-bluetooth-muted": " {icon}",
         "format-icons": {
            "headphone": "",
            "hands-free": "",
            "headset": "",
            "phone": "",
            "portable": "",
            "car": "",
            "default": ["", "", ""]
         },
        "on-click-right": "pavucontrol"
      }
  }
  '';
}

