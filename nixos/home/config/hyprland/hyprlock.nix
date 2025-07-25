{ ... }:
{
  home.file.".config/hypr/hyprlock.conf".text = ''
    #  _                      _            _
    # | |__  _   _ _ __  _ __| | ___   ___| | __
    # | '_ \| | | | '_ \| '__| |/ _ \ / __| |/ /
    # | | | | |_| | |_) | |  | | (_) | (__|   <
    # |_| |_|\__, | .__/|_|  |_|\___/ \___|_|\_\
    #        |___/|_|
    #

    background {
        monitor =
        path = $HOME/wallpapers/wallpaper0.png
        color = rgba(25, 20, 20, 1.0)
        # all these options are taken from hyprland, see https://wiki.hyprland.org/Configuring/Variables/#blur for explanations
        blur_passes = 0 # 0 disables blurring
        blur_size = 2
        noise = 0.0117
        contrast = 0.8916
        brightness = 0.8172
        vibrancy = 0.1696
        vibrancy_darkness = 0.0
    }

    input-field {
        monitor =
        size = 200, 50
        outline_thickness = 1
        dots_size = 0.2 # Scale of input-field height, 0.2 - 0.8
        dots_spacing = 0.15 # Scale of dots' absolute size, 0.0 - 1.0
        dots_center = true
        outer_color = rgb(000000)
        inner_color = rgb(200, 200, 200)
        font_color = rgb(10, 10, 10)
        fade_on_empty = true
        placeholder_text = <i>Input Password...</i> # Text rendered in the input box when it's empty.
        hide_input = false
        position = 0, -20
        halign = center
        valign = center
    }

    label {
        monitor =
        text =  
        color = rgba(200, 200, 200, 1.0)
        font_size = 25
        font_family = Noto Sans
        position = 0, 200
        halign = center
        valign = center
    }
      '';
}

