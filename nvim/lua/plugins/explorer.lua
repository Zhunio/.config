return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 60,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })
    vim.keymap.set('n', '<leader>ee', ':NvimTreeFindFileToggle<CR>')
    vim.keymap.set('n', '<leader>er', ':NvimTreeRefresh<CR>')
  end,
}
