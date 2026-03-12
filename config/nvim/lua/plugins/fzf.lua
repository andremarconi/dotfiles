return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	-- dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "nvim-mini/mini.icons" },
	---@module "fzf-lua"
	---@type fzf-lua.Config|{}
	---@diagnostic disable: missing-fields
	opts = {},
	---@diagnostic enable: missing-fields
	config = function()
		require("fzf-lua").setup({
			-- MISC GLOBAL SETUP OPTIONS, SEE BELOW
			-- fzf_bin = ...,
			-- each of these options can also be passed as function that return options table
			-- e.g. winopts = function() return { ... } end
			keymap = {
				builtin = {
					["<F1>"] = "toggle-help",
					["<F2>"] = "toggle-fullscreen",
					["<F4>"] = "toggle-preview",
					["<S-up>"] = "preview-page-up",
					["<S-down>"] = "preview-page-down",
				},
				fzf = {
					["ctrl-u"] = "preview-page-up",
					["ctrl-d"] = "preview-page-down",
					["shift-up"] = "preview-page-up",
					["shift-down"] = "preview-page-down",
					["ctrl-a"] = "beginning-of-line",
					["ctrl-e"] = "end-of-line",
					["alt-a"] = "toggle-all", -- multi-select like <Tab> in Telescope
				},
			}, -- Neovim keymaps / fzf binds
			grep = {
				actions = {
					["enter"] = require("fzf-lua").actions.grep_copen,
					["ctrl-q"] = require("fzf-lua").actions.send_to_qf,
					["ctrl-g"] = require("fzf-lua").actions.grep_lgrep,
				},
			},
		})
		vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>")
		vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>")
		vim.keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<CR>")
	end,
}
