{ ... }:
{
  home.file.".config/hypr/hypridle.conf".text = ''
    #  _                      _     _ _      
    # | |__  _   _ _ __  _ __(_) __| | | ___ 
    # | '_ \| | | | '_ \| '__| |/ _` | |/ _ \
    # | | | | |_| | |_) | |  | | (_| | |  __/
    # |_| |_|\__, | .__/|_|  |_|\__,_|_|\___|
    #        |___/|_|                        
    # 

    general {
        ignore_dbus_inhibit = false
    }

    # Screenlock
    listener {
        timeout = 900
        on-timeout = hyprlock
        # on-resume = notify-send "Welcome back to your desktop!"
    }

    # dpms
    listener {
        timeout = 960
        on-timeout = hyprctl dispatch dpms off
        on-resume = hyprctl dispatch dpms on
    }

    # Suspend
    listener {
        timeout = 1800
        on-timeout = systemctl suspend
    }
  '';
}

