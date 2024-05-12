{pkgs, lib, ...}:
{
  imports = [
    ./home-manager/nvim/nvim.nix
    ./home-manager/lf/lf.nix
    ./home-manager/hyprland.nix
    ./home-manager/bash.nix
  ];
}
