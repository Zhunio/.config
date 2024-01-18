return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("nvim-treesitter.configs").setup({
				auto_install = true,
				hightlight = { enable = true },
				indent = { enable = true },
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<C-Space>",
						node_incremental = "<C-Space>",
						scope_incremental = false,
						node_decremental = "<bs>",
					},
				},
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					-- theme = 'catppuccin'
					-- theme = 'tokyonight'
					theme = "onedark",
				},
			})
		end,
	},
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000,
		config = function()
			require("onedarkpro").setup({
				styles = {
					comments = "italic",
				},
				options = {
					transparency = true,
				},
			})
			vim.cmd("colorscheme onedark")
		end,
	},
	-- {
	--   "catppuccin/nvim",
	--   priority = 1000,
	--   config = function()
	--     require("catppuccin").setup({ transparent_background = true })
	--     vim.cmd.colorscheme("catppuccin")
	--   end,
	-- },
	-- {
	--   "folke/tokyonight.nvim",
	--   lazy = false,
	--   priority = 1000,
	--   config = function ()
	--     require('tokyonight').setup({
	--       style = 'storm',
	--       transparent = true,
	--       styles = {
	--         comments = { italic = true },
	--         keywords = { italic = true },
	--         functions = {},
	--         variables = {},
	--         sidebars = 'transparent',
	--         floats = 'transparent',
	--       },
	--     })
	--     vim.cmd.colorscheme "tokyonight"
	--   end
	-- }
}
