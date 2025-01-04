{ pkgs, lib, inputs, ... }:

{
  imports = [
    ./hyprland/keybinds.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {

      ### INPUT ###

      input = {
        kb_layout = "no";
        kb_options = "caps:swapescape";

        touchpad = {
          natural_scroll = true;
          scroll_factor = 0.15;
          tap-and-drag = true;
        };
      };
    };

    plugins = with inputs.hyprland-plugins.packages.${pkgs.system}; [
      # hyprbars
      hyprexpo
    
      # hyprtrails
      # hyprwinwrap
    ];

    extraConfig = ''
      exec-once = waybar
    '';
  };

  home.packages = with pkgs; [
    hyprpaper
    kitty-themes
  ];

  programs.kitty = {
    enable = true;
    settings = {
      # background_opacity = 0.7;
      confirm_os_window_close = -1;
    };
    themeFile = "Catppuccin-Macchiato";
  };

  programs.waybar = {
    enable = true;
    settings = {
    };
  };

  services.hyprpaper = {
    enable = true;
  };
}
