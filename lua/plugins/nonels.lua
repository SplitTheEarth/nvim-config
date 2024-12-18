return {

	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
        -- Formatting
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.prettier,
        -- Linters
				-- null_ls.builtins.diagnostics.eslint_d,
				-- require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
			},
		})

		vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "[LSP] Format " })
	end,
}
