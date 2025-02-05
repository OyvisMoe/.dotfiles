{pkgs, lib, ...}:
{
  programs.bash = {
    enable = true;
    shellAliases = {
      "dots" = "cd ~/.dotfiles";
      "conf" = "cd ~/.dotfiles/hosts/default";
      ".." = "cd ..";
      "..." = "cd ../..";
      "la" = "ls -a";
      "ll" = "ls -l";
    };
    historyControl = [ "ignoredups" ];
    historyIgnore = [
      "ls"
      "ll"
      "lf"
      "la"
      "cd"
      ".."
      "..."
      "-"
      "dots"
      "conf"
    ];
    bashrcExtra = ''
      set -o vi
      '';
  };
}
