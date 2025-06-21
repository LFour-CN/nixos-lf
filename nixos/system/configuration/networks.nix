{ pkgs, ... }:
{
  # Enable networking
  services.upower.enable = true;
  networking = {
    hostName = "lfour"; # Define your hostname
    nameservers = [ "1.1.1.1" "8.8.4.4" ];
    useDHCP = pkgs.lib.mkDefault true;
    #If using dhcpcd:
    dhcpcd.enable = true;
    dhcpcd.persistent = false;
    dhcpcd.extraConfig = "nohook resolv.conf";
    networkmanager = {
        enable = true;
        # If using NetworkManager:
        dns = "none";
        wifi.backend = "iwd";
        wifi.powersave = false;
      };
      wireless.iwd = {
        enable = true;
        settings = {
          #If using iwd:
          Network.NameResolvingService = "none";
          General = {
             EnableNetworkConfiguration = true;
          };
          IPv6 = {
            Enabled = true;
          };
          Scan = {
            DisablePeriodicScan = true;
          };
          Settings = {
            AutoConnect = true;
          };
        };
     };
  };

  # Substituters mirrors
  nix = {
      settings = {
        substituters = [
          "https://mirror.tuna.tsinghua.edu.cn/nix-channels/store"
          "https://mirrors.ustc.edu.cn/nix-channels/store"
          "https://cache.nixos.org"
        ];
      };
  };

  #hosts
   networking.hosts = {
     "140.82.114.4" = ["github.com"];
    };

    environment.systemPackages = with pkgs; [
        iwgtk
        impala
  ];
}

