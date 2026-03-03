return {

	"nvim-treesitter/nvim-treesitter",

	lazy = false,
	build = ":TSUpdate",
	opts = {},

	config = function()
		-- import nvim-treesitter plugin
		local treesitter = require("nvim-treesitter")
		-- configure treesitter
		local linguagens = {
			"json",
			"javascript",
			"typescript",
			"tsx",
			"yaml",
			"html",
			"css",
			"prisma",
			"markdown",
			"markdown_inline",
			"svelte",
			"graphql",
			"bash",
			"lua",
			"vim",
			"dockerfile",
			"gitignore",
			"query",
			"vimdoc",
			"c",
		}
		treesitter.install(linguagens)
		vim.api.nvim_create_autocmd("FileType", {
			pattern = linguagens,
			callback = function()
				vim.treesitter.start()
			end,
		})
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
}
