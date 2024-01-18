require("options")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

if vim.g.vscode then
  require("keymaps-vscode")
  require("lazy").setup({
    { 
      'vscode-neovim/vscode-multi-cursor.nvim',
      config = function() require('vscode-multi-cursor').setup({}) end
    }
  });
else
  require("keymaps")
  require("lazy").setup('plugins');
end
