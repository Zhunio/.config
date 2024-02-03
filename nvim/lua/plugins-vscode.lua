return {
	{
		"vscode-neovim/vscode-multi-cursor.nvim",
		config = function()
			require("vscode-multi-cursor").setup({
        default_mappings = true,
        no_selection = false
      })
		end,
	},
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
    },
  }
}
