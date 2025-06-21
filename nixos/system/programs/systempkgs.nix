{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    	###############################
	vim
   	wget
	neovim
	git
	fish
	unzip
	unrar
        btop
	fastfetch
	###############################
	gnome-tweaks
        electron
	###############################
        ffmpeg-full
        ncmpcpp
        ###############################
	blueman
	bluez # Bluetooth support
        bluez-tools # Bluetooth tools
        ###############################
	glib-networking
        klibcShrunk
        bear
	lshw
        lsd
        tree
        pciutils
	usbutils
        fuse
        dhcpcd
        dhcping
        sl
        mu
        msmtp
        brightnessctl
        alsa-utils
        coreutils-full
        ###### C & C++ ################
        gcc_multi 
        gdb 
        cmake
        gnumake
        llvmPackages_latest.clang-tools
        llvmPackages_latest.lldb
        llvmPackages_latest.libllvm
        llvmPackages_latest.libcxx
        llvmPackages_latest.clang

        ###### JAVA ##################
        zulu24
        ###### Embedded Development ######
        #
        gcc-arm-embedded
        platformio
        arduino-cli 
        openocd
        pkgs.dotnet-sdk
        pkgs.dotnet-runtime
        #
        ### STM32 ###
        #
        stlink
        stm32flash
        stm32loader
        stlink-tool
        stlink-gui
        #
        ### ESP32 ###
        #
        esptool
        espflash
        #
	###### MySQL ##################
        mariadb
        mysql-shell
        ###### Python #################
        python3Full 
        python312Packages.pyqt6
        ###### NodeJS #################
        nodejs
        ###### Rust ###################
        cargo
        rustc
        ###### GO ####################
	go
        direnv
        ###### END ###################
  ];
}
