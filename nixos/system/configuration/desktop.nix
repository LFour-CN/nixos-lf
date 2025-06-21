{ config, pkgs, ... }:
{
  # Gnome
  programs.dconf.enable = true;
  services.xserver.enable = true;
  services.gnome.gnome-keyring.enable = true;
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;
  hardware.sensor.iio.enable = true;
  services.udev.packages = with pkgs; [ 
    pkgs.gnome-settings-daemon
  ];

  # Kde
  services = {
    #desktopManager.plasma6.enable = true;
    #displayManager.sddm.enable = true;
    #displayManager.sddm.wayland.enable = true;
  };
  qt = {
    enable = true;
    platformTheme = "gnome";
    style = "adwaita-dark";
  };

  # Hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };

  # Xfce4
  #services.xserver = {
  #  desktopManager = {
  #    xterm.enable = false;
  #    xfce.enable = true;
  #  };
  #};

  environment.systemPackages = with pkgs; [ 
    # Gnome applications
    #gnome-software
    gnome-remote-desktop
    gnome-control-center
    
    # Gnome extensions
    gnomeExtensions.appindicator
    gnomeExtensions.applications-menu
    gnomeExtensions.caffeine
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.dash-to-dock
    gnomeExtensions.desktop-icons-ng-ding
    gnomeExtensions.extension-list
    gnomeExtensions.lockscreen-extension
    gnomeExtensions.places-status-indicator
    gnomeExtensions.system-monitor
    gnomeExtensions.user-themes
    gnomeExtensions.vitals
    gnomeExtensions.workspace-indicator
    
    # Gnome windows themes
    pkgs.adwaita-icon-theme
    
    # GDM
    gdm-settings
    
    # SDDM
    sddm-sugar-dark
    sddm-chili-theme
    catppuccin-sddm
    catppuccin-sddm-corners
    where-is-my-sddm-theme
    
    # KDE
    #  kdePackages.discover # Optional: Install if you use Flatpak or fwupd firmware update sevice
    #  kdePackages.kcalc # Calculator
    #  kdePackages.kcharselect # Tool to select and copy special characters from all installed fonts
    #  kdePackages.kcolorchooser # A small utility to select a color
    #  kdePackages.kolourpaint # Easy-to-use paint program
    #  kdePackages.ksystemlog # KDE SystemLog Application
    #  kdePackages.sddm-kcm # Configuration module for SDDM
    #  kdiff3 # Compares and merges 2 or 3 files or directories
    #  kdePackages.isoimagewriter # Optional: Program to write hybrid ISO files onto USB disks
    #  kdePackages.partitionmanager # Optional Manage the disk devices, partitions and file systems on your computer
    #  hardinfo2 # System information and benchmarks for Linux systems
    #  haruna # Open source video player built with Qt/QML and libmpv
    #  wayland-utils # Wayland utilities
    #  wl-clipboard # Command-line copy/paste utilities for Wayland
    # Hyprland
    waybar
    wofi

    # Sway
    #grim # screenshot functionality
    #slurp # screenshot functionality
    #wl-clipboard # wl-copy and wl-paste for copy/paste from stdin / stdout
    #mako # notification system developed by swaywm maintainer
  ];
}
