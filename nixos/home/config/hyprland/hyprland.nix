{ config, pkgs, ... }:
{
  home.file.".config/hypr/hyprland.conf".text = ''
    
  # ----------------------------------------------------- 
  # Hyprland config --- LFour-CN@Github
  # Created at July 4, 2025
  # -----------------------------------------------------

  # Windows animations
    animations {     
      enabled = true     
      bezier = wind, 0.05, 0.9, 0.1, 1.05     
      bezier = winIn, 0.1, 1.1, 0.1, 1.1     
      bezier = winOut, 0.3, -0.3, 0, 1     
      bezier = liner, 1, 1, 1, 1     
      animation = windows, 1, 6, wind, slide     
      animation = windowsIn, 1, 6, winIn, slide     
      animation = windowsOut, 1, 5, winOut, slide     
      animation = windowsMove, 1, 5, wind, slide     
      animation = border, 1, 1, liner     
      animation = borderangle, 1, 30, liner, loop     
      animation = fade, 1, 10, default     
      animation = workspaces, 1, 5, wind
    }

  # Execute your favorite apps at launch
    exec-once = waybar
    exec-once = hypridle
    #exec-once = hyprpaper
    exec-once = dunst
    exec-once = fcitx5
    exec-once = kitty
    
    # SUPER key
    $mainMod = SUPER
    
    # Actions
    bind = $mainMod, Z, exec, kitty # Open Kitty
    bind = $mainMod, E, exec, emacs # Emacs Editor
    bind = $mainMod, X, killactive # Close current window
    bind = $mainMod SHIFT, Q, exit # Exit Hyprland
    bind = $mainMod, D, exec, nemo # Opens the filemanager
    bind = $mainMod, T, togglefloating # Toggle between tiling and floating window
    bind = $mainMod, F, fullscreen # Open the window in fullscreen
    bind = $mainMod, SPACE, exec, wofi --show run # Open wofi
    bind = $mainMod, P, pseudo, # dwindle
    bind = $mainMod, J, togglesplit, # dwindle
    bind = $mainMod SHIFT, B, exec, ~/.config/ml4w/scripts/reload-waybar.sh # Reload Waybar
    bind = $mainMod SHIFT, W, exec, ~/.config/ml4w/scripts/reload-hyprpaper.sh # Reload hyprpaper after a changing the wallpaper
    bind = $mainMod, B, exec, chromium #start brower
    bind = $mainMod, S, exec, hyprshot -m region #hyprshot
    bind = $mainMod, L, exec, hyprlock   #hyprlock
    bind = $mainMod, C, exec, code   # Open vscode
    bind = $mainMod, W, exec, waybar   # Open waybar
    bind = $mainMod, Q, exec, pkill -9 waybar   # Quit waybar
    bind = $mainMod SHIFT, L, exec, wlogout -b 4 #wlogout
    bind = $mainMod, G, exec, ghostty
    
    # Move focus with mainMod + arrow keys
    bind = $mainMod, left, movefocus, l # Move focus left
    bind = $mainMod, right, movefocus, r # Move focus right
    bind = $mainMod, up, movefocus, u # Move focus up
    bind = $mainMod, down, movefocus, d # Move focus down
    bind = $mainMod SHIFT, right, resizeactive, 100 0
    bind = $mainMod SHIFT, left, resizeactive, -100 0
    bind = $mainMod SHIFT, up, resizeactive, 0 -100
    bind = $mainMod SHIFT, down, resizeactive, 0 100
    
    # Switch workspaces with mainMod + [0-9]
    bind = $mainMod, 1, workspace, 1 # Switch to workspace 1
    bind = $mainMod, 2, workspace, 2 # Switch to workspace 2
    bind = $mainMod, 3, workspace, 3 # Switch to workspace 3
    bind = $mainMod, 4, workspace, 4 # Switch to workspace 4
    bind = $mainMod, 5, workspace, 5 # Switch to workspace 5
    bind = $mainMod, 6, workspace, 6 # Switch to workspace 6
    bind = $mainMod, 7, workspace, 7 # Switch to workspace 7
    bind = $mainMod, 8, workspace, 8 # Switch to workspace 8
    bind = $mainMod, 9, workspace, 9 # Switch to workspace 9
    bind = $mainMod, 0, workspace, 10 # Switch to workspace 10

    # Move active window to a workspace with mainMod + SHIFT + [0-9]
    bind = $mainMod SHIFT, 1, movetoworkspace, 1 #  Move window to workspace 1
    bind = $mainMod SHIFT, 2, movetoworkspace, 2 #  Move window to workspace 2
    bind = $mainMod SHIFT, 3, movetoworkspace, 3 #  Move window to workspace 3
    bind = $mainMod SHIFT, 4, movetoworkspace, 4 #  Move window to workspace 4
    bind = $mainMod SHIFT, 5, movetoworkspace, 5 #  Move window to workspace 5
    bind = $mainMod SHIFT, 6, movetoworkspace, 6 #  Move window to workspace 6
    bind = $mainMod SHIFT, 7, movetoworkspace, 7 #  Move window to workspace 7
    bind = $mainMod SHIFT, 8, movetoworkspace, 8 #  Move window to workspace 8
    bind = $mainMod SHIFT, 9, movetoworkspace, 9 #  Move window to workspace 9
    bind = $mainMod SHIFT, 0, movetoworkspace, 10 #  Move window to workspace 10
    
    # Scroll through existing workspaces with mainMod + scroll
    bind = $mainMod, mouse_down, workspace, e+1 # Scroll workspaces
    bind = $mainMod, mouse_up, workspace, e-1 # Scroll workspaces

    # Move/resize windows with mainMod + LMB/RMB and dragging
    bindm = $mainMod, mouse:272, movewindow # Move window
    bindm = $mainMod, mouse:273, resizewindow # Resize window

    decoration {
      rounding = 9
      blur {
        enabled = true
        size = 12
        passes = 4
        new_optimizations = on
        ignore_opacity = true
        xray = true
        blurls = waybar
      }
      active_opacity = 0.9
      inactive_opacity = 0.7
      fullscreen_opacity = 1
    } 

  # XDG Desktop Portal
    env = XDG_CURRENT_DESKTOP,Hyprland
    env = XDG_SESSION_TYPE,wayland
    env = XDG_SESSION_DESKTOP,Hyprland
    env = QT_QPA_PLATFORM,wayland

  # QT
    env = QT_QPA_PLATFORM,wayland;xcb
    env = QT_QPA_PLATFORMTHEME,qt6ct
    env = QT_WAYLAND_DISABLE_WINDOWDECORATION,1
    env = QT_AUTO_SCREEN_SCALE_FACTOR,1

  # GTK
    env = GDK_SCALE,1

  # Electron
    env = ELECTRON_OZONE_PLATFORM_HINT,auto

  # Mozilla
    env = MOZ_ENABLE_WAYLAND,1

  # Set the cursor size for xcursor
    env = XCURSOR_SIZE,16

  # Disable appimage launcher by default
    env = APPIMAGELAUNCHER_DISABLE,1

  # OZONE
    env = OZONE_PLATFORM,wayland

  # For KVM virtual machines
    env = WLR_NO_HARDWARE_CURSORS, 1
    env = WLR_RENDERER_ALLOW_SOFTWARE, 1

  # NVIDIA
    env = LIBVA_DRIVER_NAME,nvidia
    env = GBM_BACKEND,nvidia-drm
    env = __GLX_VENDOR_LIBRARY_NAME,nvidia
    env = __GL_VRR_ALLOWED,1
    env = WLR_DRM_NO_ATOMIC,1

  # windows rules
    windowrulev2 = float, title:QQ
    windowrulev2 = float, title:pavucontrol
    windowrulev2 = float, title:imv

  # general
    general {
        gaps_in=1
        gaps_out=5
        border_size=1
        col.active_border = rgba(248,248,255,0.2)
        col.inactive_border = rgba(00000000)
    }

    gestures {
      workspace_swipe = true
    }

    input {
      kb_layout = us
      kb_variant =
      kb_model =
      kb_options =
      kb_rules =
      follow_mouse = 1
      touchpad {
        natural_scroll = false
      }
      sensitivity = 0 # -1.0 - 1.0, 0 means no modification.
    }
    dwindle {
      pseudotile = true # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
      preserve_split = true # you probably want this
    }
    master {
      # new_status = master
    }

    misc {
      disable_hyprland_logo = true
      disable_splash_rendering = true
    }

    monitor= HDMI-A-1,1920x1080@100,0x0,1
    monitor=eDP-1,1920x1080@144,auto,1

  '';
}
