{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    	###############################
        btop
	fastfetch
	fish
	git
	neovim
	unrar
	unzip
	vim
   	wget
        electron
	gnome-tweaks
        ffmpeg-full
        ncmpcpp
	###############################
	blueman
	bluez # Bluetooth support
        bluez-tools # Bluetooth tools
	exfat
	ntfs3g
        ###############################
        alsa-utils
        bear
        coreutils-full
        dhcpcd
	direnv
        fuse
	glib-networking
        klibcShrunk
        lsd
	lshw
        pciutils
        tree
        sl
	usbutils
        ###### C & C++ ################
        cmake
        gcc_multi 
        gdb 
        gnumake
        llvmPackages_latest.clang-tools
        llvmPackages_latest.lldb
        llvmPackages_latest.libllvm
        llvmPackages_latest.libcxx
        llvmPackages_latest.clang

        ###### JAVA ##################
	jre21_minimal
        zulu24
        ###### Embedded Development ######
        #
        arduino-cli 
        dotnet-sdk
        dotnet-runtime
        gcc-arm-embedded
        openocd
        platformio
        #
        ### STM32 ###
        #
        stm32flash
        stm32loader
        stlink
        stlink-gui
        stlink-tool
        #
        ### ESP32 ###
        #
        espflash
        esptool
        #
	###### MySQL ##################
        #mariadb
        #mysql-shell
        ###### Python #################
        python3Full 
        ###### NodeJS #################
        nodejs
        ###### Rust ###################
        cargo
        rustc
        ###### GO ####################
	go
        ###### END ###################
  ];
}
