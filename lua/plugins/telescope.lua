return {
	{
		"nvim-telescope/telescope.nvim",
		name = "telescope",
		tag = "0.1.6",
		dependencies = "nvim-lua/plenary.nvim",
		config = function()
			local telescope = require("telescope.builtin")
			vim.keymap.set("n", "<leader>tf", telescope.find_files, {})
			vim.keymap.set("n", "<leader>tg", telescope.live_grep, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		name = "telescope-ui-select",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
