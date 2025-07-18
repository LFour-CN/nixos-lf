{ ... }:
{
  home.file.".config/kitty/kitty.conf".text = ''
    font_size 12.0
    mouse_hide_wait 1
    detect_urls yes
    enable_audio_bell yes
    dynamic_background_opacity yes
    background_opacity 1
    inactive_background_opacity 1
    confirm_os_window_close 0

    # font settings
    line_spacing      1.2
    line_height       1.1

    # BEGIN_KITTY_THEME
    # GitHub Dark
    # vim:ft=kitty

    ## name: GitHub Dark
    ## author: GitHub
    ## license: MIT

    #: The basic colors

    foreground #c9d1d9
    background #0d1117
    selection_foreground #0d1117
    selection_background #58a6ff


    #: Cursor colors

    cursor #58a6ff


    #: Tab bar colors

    tab_bar_background #010409
    active_tab_foreground #c9d1d9
    active_tab_background #0d1117
    inactive_tab_foreground #8b949e
    inactive_tab_background #010409

    #: The basic 16 colors

    #: black
    color0 #484f58
    color8 #6e7681

    #: red
    color1 #ff7b72
    color9 #ffa198

    #: green
    color2 #3fb950
    color10 #56d364

    #: yellow
    color3 #d29922
    color11 #e3b341

    #: blue
    color4 #58a6ff
    color12 #79c0ff

    #: magenta
    color5 #bc8cff
    color13 #d2a8ff

    #: cyan
    color6 #39c5cf
    color14 #56d4dd

    #: white
    color7 #b1bac4
    color15 #ffffff
    # END_KITTY_THEME


    # BEGIN_KITTY_FONTS
    font_family      family='Maple Mono NF'
    bold_font        auto
    italic_font      auto
    bold_italic_font auto
    adjust_line_height 100%
    font_features MapleMono-NF-ExtraLightItalic +cv01 +cv02 +cv03 +cv04 +ss01 +ss02 +ss03 +ss04 +ss05 +zero
    # END_KITTY_FONTS  
  '';
}
