{pkgs, ...}:
{
  home.packages = with pkgs;[
	# Daily Applications
	bilibili
	firefox
	#kitty
	#libreoffice
	lenovo-legion
	motrix
	qq
	qqmusic
	scrcpy
	sillytavern
	vlc
	wechat-uos
	wpsoffice-cn

	# Ventoy
	#ventoy-full
	#ventoy-full-gtk

	# Network Proxy
	clash-rs
	clash-verge-rev
	v2ray
	v2rayn

	# C/C++
	arduino-ide
	#jetbrains.clion
	stm32cubemx
	
	# Java
	#jetbrains.idea-ultimate

	# Python
	#jetbrains.pycharm-professional

	# Qt
	qtcreator

	# Game
	hmcl
  ];
}
