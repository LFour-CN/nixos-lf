{ ... }:
{
  #Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  home.username = "lfour";
  home.homeDirectory = "/home/lfour";
  imports = [
	./home/llm.nix
	./home/programs.nix 
	./home/userpkgs.nix
	#./home/config/emacs.nix
	./home/config/fastfetch.nix
	#./home/config/fish.nix
	#./home/config/hyprland/dunst.nix
	#./home/config/hyprland/hypridle.nix
	#./home/config/hyprland/hyprland.nix
	#./home/config/hyprland/hyprlock.nix
	#./home/config/hyprland/waybar-config.nix
	#./home/config/hyprland/waybar-style-css.nix
	#./home/config/hyprland/wofi.nix 
	#./home/config/kitty.nix
  ];

  #Home-manager version
  home.stateVersion = "25.11";
}
