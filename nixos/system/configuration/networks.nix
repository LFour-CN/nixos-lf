{ pkgs, ... }:
{
  # Enable networking
  networking.hostName = "nixos"; # Define hostname.
  #networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;

  # Substituters mirrors
  nix = {
      settings = {
        substituters = [
          "https://mirrors.ustc.edu.cn/nix-channels/store"
          "https://mirror.tuna.tsinghua.edu.cn/nix-channels/store"
          "https://cache.nixos.org"
        ];
      };
  };

  #hosts
  #networking.hosts = {
    #"140.82.114.4" = ["github.com"];
  #};

    environment.systemPackages = with pkgs; [];
}
