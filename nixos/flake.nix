{
  description = "NixOS System Configuration";
 
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
  { self, nixpkgs, home-manager, ... }@inputs:
  {
      nixosConfigurations.lfour = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = {
              inherit inputs;
          };
          modules = [
            home-manager.nixosModules.home-manager
            {
                home-manager = {
                  useGlobalPkgs = true;
                  useUserPackages = true;
                  sharedModules = [
                  ];
                  users.lfour = { pkgs, ... }: {
                      imports = [
                        ./home.nix
                      ];
                  };
                };
            }
            ###### Hardware Configuration #####################
            ./system/hardware/amdgpu.nix
            ./system/hardware/audio.nix
            ./system/hardware/bluetooth.nix
            ./system/hardware/camera.nix
            ./system/hardware/partition.nix
            ./system/hardware/nvidia.nix
            ###################################################
            ###### System Configuration #######################
            ./system/configuration/bootloader.nix
            ./system/configuration/desktop.nix
            ./system/configuration/environment-variables.nix 
            ./system/configuration/layout.nix
            ./system/configuration/misc.nix
            ./system/configuration/powermanager.nix 
            ./system/configuration/security.nix 
            ./system/configuration/user.nix
            ./system/configuration/networks.nix 
            ##################################################
            ###### System Programs ###########################
            ./system/programs/programs.nix 
            ./system/programs/services.nix
            ./system/programs/ssh.nix
	    ./system/programs/systempkgs.nix
            ./system/programs/virtualisation.nix
            ##################################################
          ];
      };
  };
}
