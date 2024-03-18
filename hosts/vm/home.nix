{ config, pkgs, ... }:

{
  imports = [
		/home/oyvismoe/.dotfiles/modules/home-manager/nvim-config.nix
	];

  home.username = "oyvismoe";
  home.homeDirectory = "/home/oyvismoe";

 home.stateVersion = "23.11"; # Please read the comment before changing.

  programs.bash = {
    enable = true;
    
  };

  wayland.windowManager.hyprland = {
    enable = true;
  #
  #   settings = {};
  };


  home.packages = with pkgs; [
		firefox
  ];

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
