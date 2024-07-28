{ config, pkgs, inputs, ... }:

{
  imports = [
    ../../modules/hm-modules.nix
  ];

  home.username = "nixos";
  home.homeDirectory = "/home/nixos";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  programs.bash = {
    enable = true;
  };

  programs.git = {
    enable = true;
    userName = "OyvisMoe";
    userEmail = "oyvindskjonhaug@gmail.com";
  };

  home.packages = with pkgs; [
    neofetch
    bat
    fzf
  ];

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
