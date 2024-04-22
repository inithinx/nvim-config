return {
	"nvim-neo-tree/neo-tree.nvim",
	name = "neotree",
	branch = "v3.x",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" },
	config = function()
		vim.keymap.set("n", "<leader>f", ":Neotree filesystem toggle left<CR>", {})
	end,
}
