return {
  {
    "vscode-neovim/vscode-multi-cursor.nvim",
    config = function()
      require("vscode-multi-cursor").setup({
        default_mappings = true,
        no_selection = false
      })

      -- vscode-multi-cursor
      vim.keymap.set({ 'n', 'x' }, 'mc', require('vscode-multi-cursor').create_cursor, { expr = true })
      vim.keymap.set({ 'n' }, 'mcc', require('vscode-multi-cursor').cancel)
      vim.keymap.set({ 'n', 'x' }, 'mi', require('vscode-multi-cursor').start_left)
      vim.keymap.set({ 'n', 'x' }, 'mI', require('vscode-multi-cursor').start_left_edge)
      vim.keymap.set({ 'n', 'x' }, 'ma', require('vscode-multi-cursor').start_right)
      vim.keymap.set({ 'n', 'x' }, 'mA', require('vscode-multi-cursor').start_right)
      vim.keymap.set({ 'n' }, '[mc', require('vscode-multi-cursor').prev_cursor)
      vim.keymap.set({ 'n' }, ']mc', require('vscode-multi-cursor').next_cursor)
      vim.keymap.set({ 'n' }, 'mcs', require('vscode-multi-cursor').flash_char)
      vim.keymap.set({ 'n' }, 'mcw', require('vscode-multi-cursor').flash_word)
      vim.keymap.set('n', '<C-t>', 'mciw*<Cmd>nohl<CR>', { remap = true })
    end,
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      modes = {
        char = {
          highlight = { backdrop = false }
        }
      }
    },
    keys = {},
  }
}
