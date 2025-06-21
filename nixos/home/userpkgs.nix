{pkgs, ...}:
{
  home.packages = with pkgs;[
	
	# Daily applications
	firefox
	qq
	wechat-uos
	qqmusic
	strawberry
	kitty
	hmcl
	bilibili
	wpsoffice-cn
	libreoffice
	motrix

	# Dev
	arduino-ide
	stm32cubemx
	jetbrains.pycharm-professional
	jetbrains.idea-ultimate
	jetbrains.clion

	# Game
	hmcl
	mgba
  ];
}
