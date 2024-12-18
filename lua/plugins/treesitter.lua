return {
	-- Treesitter
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		-- Treesitter Config
		local TSconfig = require("nvim-treesitter.configs")

		TSconfig.setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc" },
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
