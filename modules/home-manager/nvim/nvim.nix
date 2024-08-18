{ pkgs, lib, ... }:

{
  programs.neovim = 
  let 
    toLua = str: "lua << EOF\n${str}\nEOF\n";
    toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
  in {
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
        plugin = nvim-tree-lua;
        config = toLuaFile ./plugin/nvim-tree.lua;
      }
      {
        plugin = bufferline-nvim;
        config = toLua "require('bufferline').setup()";
      }
      {
        plugin = nvim-lspconfig;
        config = toLuaFile ./plugin/lsp.lua;
      }
      {
        plugin = nvim-cmp;
        config = toLuaFile ./plugin/cmp.lua;
      }
        cmp_luasnip
        cmp-nvim-lsp
      {
        plugin = luasnip;
        config = toLuaFile ./plugin/luasnip.lua;
      }
      {
        plugin = vimtex;
        config = toLuaFile ./plugin/vimtex.lua;
      }

        # lualine-nvim

      {
        plugin = nvim-surround;
        config = toLua "require('nvim-surround').setup({})";
      }
      {
        plugin = telescope-nvim;
        config = toLuaFile ./plugin/telescope.lua;
      }
      {
        plugin = (nvim-treesitter.withPlugins (p: [
          p.tree-sitter-c
          p.tree-sitter-nix
          p.tree-sitter-vim
          p.tree-sitter-bash
          p.tree-sitter-lua
          p.tree-sitter-python
        ]));
        config = toLuaFile ./plugin/treesitter.lua;
      }
      {
        plugin = nvim-autopairs;
        config = toLua "require('nvim-autopairs').setup {}";
      }
      {
        plugin = hop-nvim;
        config = toLuaFile ./plugin/hop.lua;
      }
      telescope-fzf-native-nvim
      nvim-web-devicons
    ];

    extraLuaConfig = ''
    ${builtins.readFile ./options.lua}
    ${builtins.readFile ./maps.lua}
    '';

    extraPackages = with pkgs; [
      # Clipboard
      xclip
      # LSP
      lua-language-server
      nixd
      ccls
      haskell-language-server
      # Telescope
      fd
      ripgrep
    ];
  };
}
