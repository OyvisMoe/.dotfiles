{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.hyprland.homeManagerModules.default
    ../../modules/hm-modules.nix
  ];

  home.username = "oyvismoe";
  home.homeDirectory = "/home/oyvismoe";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  programs.git = {
    enable = true;
    userName = "OyvisMoe";
    userEmail = "oyvindskjonhaug@gmail.com";
  };

  home.packages = with pkgs; [
    firefox
    neofetch
    bat
    fzf
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };

# Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
