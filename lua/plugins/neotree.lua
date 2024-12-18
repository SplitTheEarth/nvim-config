return {
	-- Neo-Tree
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		-- Neotree Config
		vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left<CR>", { desc = "Open Neo-Tree" })
	end,
}
