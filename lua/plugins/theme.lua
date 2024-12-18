return {
	-- Theme
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		-- Theme Config
		vim.cmd.colorscheme("catppuccin")
	end,
}
