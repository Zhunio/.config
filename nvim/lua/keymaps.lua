-- exit insert mode
vim.keymap.set("i", "jj", "<ESC>")

-- buffer management
vim.keymap.set("n", "<leader>h", ":bprevious<CR>")
vim.keymap.set("n", "<leader>l", ":bnext<CR>")

-- file
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- comment (handled by comment.lua)

-- window split
vim.keymap.set("n", "<leader>ss", ":split<CR>")
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>")

--  window management (handled by tmux-navigator)

--  resize windows
vim.keymap.set("n", "<C-right>", ":vertical resize +2<CR>")
vim.keymap.set("n", "<C-down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-up>", ":resize -2<CR>")

-- code actions (handled by lsp.lua & none-ls.lua)

-- test actions (not yet implemented)

-- git actions (not yet implemented)

-- fold actions (not yet implemented)

-- indentation
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- move lines
vim.keymap.set("v", "J", ":move .+1<CR>==")
vim.keymap.set("v", "K", ":move .-1<CR>==")
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv")
vim.keymap.set("v", "p", "_dP")
