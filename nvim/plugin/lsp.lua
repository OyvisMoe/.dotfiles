local on_attach = function(_, bufnr)
	local bufmap = function(keys, func)
		vim.keymap.set('n', keys, func, { buffer = bufnr })
	end

	vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
		vim.lsp.buf.format()
	end, {})
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

require('lspconfig').lua_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}

require('lspconfig').nixd.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
