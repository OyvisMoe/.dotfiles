{ config, pkgs, ... }:

{
  imports = [];

  home.username = "oyvismoe";
  home.homeDirectory = "/home/oyvismoe";

 home.stateVersion = "23.11"; # Please read the comment before changing.

  programs.neovim = 
    let 
      toLua = str: "lua << EOF\n${str}\nEOF\n";
			toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
    in
  {
    enable = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    plugins = with pkgs.vimPlugins; [
      {
        plugin = comment-nvim;
				config = toLua "require(\"Comment\").setup()";
      }
			{
				plugin = gruvbox-nvim;
				config = "colorscheme gruvbox";

			}
      {
        plugin = nvim-lspconfig;
				config = toLuaFile ../../nvim/plugin/lsp.lua;
      }
			{
				plugin = nvim-cmp;
				config = toLuaFile ../../nvim/plugin/cmp.lua;
			}
			cmp_luasnip
			cmp-nvim-lsp
			luasnip

			{
				plugin = lualine-nvim;
			}
    ];

    extraLuaConfig = ''
      ${builtins.readFile ../../nvim/options.lua}
    '';

		extraPackages = with pkgs; [
			xclip
			lua-language-server
			nixd
		];
  };

  programs.bash = {
    enable = true;
    
  };

  wayland.windowManager.hyprland = {
    enable = false;
    package = pkgs.hyprland;
    xwayland.enable = true;

    settings = {};
  };


  home.packages = [

  ];

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
