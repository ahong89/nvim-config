return {
	{
		"williamboman/mason.nvim", -- manage installation of lsps
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				-- reference repository https://github.com/williamboman/mason-lspconfig.nvim for other languages
				ensure_installed = { "lua_ls" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			vim.diagnostic.config({
				signs = false
			})
			
			vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})

			lspconfig.lua_ls.setup({})
		end
	}
}
