{ pkgs, lib, inputs, ... }:

{
    wayland.windowManager.hyprland = {
	enable = true;
	settings = {
	    "$mod" = "SUPER";
	    bind = [
		"$mod, B, exec, firefox"
		"$mod, ENTER, exec, kitty"
	    ]
	    ++ (
		# workspaces
		# binds $mod + [shift +] {1..10} to [move to] workspace {1..10}
		builtins.concatLists (builtins.genList (
		    x: let
			ws = let
			    c = (x + 1) / 10;
			in
			    builtins.toString (x + 1 - (c * 10));
		    in [
			"$mod, ${ws}, workspace, ${toString (x + 1)}"
			"$mod SHIFT, ${ws}, movetoworkspace, ${toString (x + 1)}"
		    ]
		)
		10)
	    );
	};
	# plugins = with inputs.hyprland-plugins.packages.${pkgs.system}; [
	#     hyprbars
	#     hyprtrails
	#     hyprwinwrap
	# ];
    };

    home.packages = with pkgs; [
	kitty
    ];
}
