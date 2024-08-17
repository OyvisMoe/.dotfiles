{pkgs, lib, ...}:
{
  imports = [
    ./home-manager/nvim/nvim.nix
    ./home-manager/lf/lf.nix
    # ./home-manager/hyprland.nix // Uncomment if using hyprland
    ./home-manager/bash.nix
    ./home-manager/languages.nix
  ];
}
