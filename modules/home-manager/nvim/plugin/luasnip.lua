require('luasnip').config.set_config({
  -- Enable autotriggered snippets
  enable_autosnippets = true,
  -- Use Tab to trigger visual selection
  store_selection_keys = "<Tab>",
})

require("luasnip.loaders.from_lua").lazy_load({paths = "~/.dotfiles/modules/home-manager/nvim/snippets/"})

-- vim.cmd[[
-- imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
-- smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'
-- imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
-- smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
-- ]]

