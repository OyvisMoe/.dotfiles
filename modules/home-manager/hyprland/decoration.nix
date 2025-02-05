{pkgs, inputs, ...}:

{
  wayland.windowManager.hyprland = {
    settings = {
      decoration = {
        rounding = 20;
        blur = {
          enabled = true;
        };

        shadow = {
          enabled = true;

        };
      };

      general = {
        gaps_in = 4;
        gaps_out = 5;
        gaps_workspaces = 50;
        border_size = 1;

        # col.active_border = "rgba(0DB7D4FF)";
        # col.inactive_border = "rgba(31313600)";
      };
    };
  };
}

