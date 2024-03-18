{ pkgs, lib, ... }:

{
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
				config = toLua "require('Comment').setup()";
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

			# lualine-nvim

			{
				plugin = nvim-surround;
				config = toLua "require('nvim-surround').setup({})";
			}
			{
				plugin = telescope-nvim;
				config = toLuaFile ../../nvim/plugin/telescope.lua;
			}
			{
				plugin = (nvim-treesitter.withPlugins (p: [
					p.tree-sitter-nix
					p.tree-sitter-vim
					p.tree-sitter-bash
					p.tree-sitter-lua
					p.tree-sitter-python
				]));
				config = toLuaFile ../../nvim/plugin/treesitter.lua;
			}
			{
				plugin = nvim-autopairs;
				config = toLua "require('nvim-autopairs').setup {}";
			}
			telescope-fzf-native-nvim
			nvim-web-devicons
    ];

    extraLuaConfig = ''
      ${builtins.readFile ../../nvim/options.lua}
    '';

		extraPackages = with pkgs; [
			# Clipboard
			xclip
			# LSP
			lua-language-server
			nixd
			# Telescope
			fd
			ripgrep
		];
  };
}
