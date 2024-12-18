return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd" }, -- Put Language Servers Here
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})

			local wk = require("which-key")
			wk.add({
				{ "<leader>l", group = "LSP" }, -- group
			})
			vim.keymap.set("n", "<Leader>lk", vim.lsp.buf.hover, { desc = "[LSP] Hover" })
			vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = "[LSP] Go to Definition" })
			vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "[LSP] Code Actions" })
		end,
	},
}
