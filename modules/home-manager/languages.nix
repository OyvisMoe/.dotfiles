{pkgs, ...}:

{ 
  home.packages = with pkgs; [
    gcc
    ghc
    python3
  ]; 
}
