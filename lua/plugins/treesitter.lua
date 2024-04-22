return {
	"nvim-treesitter/nvim-treesitter",
	name = "treesitter",
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")
		treesitter.setup({
			auto_install = true,
			--ensure_installed = {"lua", "go", "javascript" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
