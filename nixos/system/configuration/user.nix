{ pkgs, ... }:
{
  # Define a user account.
  users.users.lfour = {
    isNormalUser = true;
    description = "lfour";
    extraGroups = [ "networkmanager" "wheel" "dialout"  "libvirtd" "video" ];
    shell = pkgs.fish;
  };
}

