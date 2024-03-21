{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.hyprland.homeManagerModules.default
    ../../modules/home-manager/nvim/nvim.nix
    ../../modules/home-manager/hyprland.nix
    ../../modules/home-manager/lf/lf.nix
  ];

  home.username = "oyvismoe";
  home.homeDirectory = "/home/oyvismoe";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  programs.bash = {
    enable = true;
    shellAliases = {
      "dots" = "cd ~/.dotfiles";
      "conf" = "cd ~/.dotfiles/hosts/vm";
      ".." = "cd ..";
      "..." = "cd ../..";
      "la" = "ls -a";
      "ll" = "ls -l";
    };
    historyControl = [ "ignoredups" ];
    historyIgnore = [
      "ls"
      "cd"
    ];
    bashrcExtra = ''
      set -o vi
      '';
    };

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

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

# Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
