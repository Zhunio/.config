-- file
vim.keymap.set('n', '<leader>q', function() require('vscode-neovim').action('workbench.action.closeActiveEditor') end)
vim.keymap.set('n', '<leader>w', function() require('vscode-neovim').action('workbench.action.files.save') end)

-- comment
vim.keymap.set({ 'n', 'x' }, '<leader>c', function() require('vscode-neovim').action('editor.action.commentLine') end)

-- window split
vim.keymap.set('n', '<leaderss', function() require('vscode-neovim').action('workbench.action.splitEditorDown') end)
vim.keymap.set('n', '<leader>sv', function() require('vscode-neovim').action('workbench.action.splitEditor') end)

-- buffers
vim.keymap.set('n', '<leader>l', function() require('vscode-neovim').action('workbench.action.nextEditor') end)
vim.keymap.set('n', '<leader>h', function() require('vscode-neovim').action('workbench.action.previousEditor') end)

-- window management
vim.keymap.set('n', '<C-l>', function() require('vscode-neovim').action('workbench.action.navigateRight') end)
vim.keymap.set('n', '<C-j>', function() require('vscode-neovim').action('workbench.action.navigateDown') end)
vim.keymap.set('n', '<C-h>', function() require('vscode-neovim').action('workbench.action.navigateLeft') end)
vim.keymap.set('n', '<C-k>', function() require('vscode-neovim').action('workbench.action.navigateUp') end)

-- resize windows
vim.keymap.set('n', '<C-right>', function() require('vscode-neovim').action('workbench.action.increaseViewWidth') end)
vim.keymap.set('n', '<C-down>', function() require('vscode-neovim').action('workbench.action.increaseViewHeight') end)
vim.keymap.set('n', '<C-left>', function() require('vscode-neovim').action('workbench.action.decreaseViewWidth') end)
vim.keymap.set('n', '<C-up>', function() require('vscode-neovim').action('workbench.action.decreaseViewHeight') end)

-- code actions
vim.keymap.set('n', '<leader>r', function() require('vscode-neovim').action('editor.action.rename') end)
vim.keymap.set('n', '<leader>f', function() require('vscode-neovim').action('editor.action.formatDocument') end)
vim.keymap.set('n', 'K', function() require('vscode-neovim').action('editor.action.showHover') end)
vim.keymap.set('n', 'gd', function() require('vscode-neovim').action('editor.action.revealDefinition') end)
vim.keymap.set('n', 'gD', function() require('vscode-neovim').action('editor.action.peekDefinition') end)
vim.keymap.set('n', 'gr', function() require('vscode-neovim').action('editor.action.goToReferences') end)
vim.keymap.set('n', 'g:', function() require('vscode-neovim').action('workbench.action.gotoLine') end)

-- test actions
vim.keymap.set('n', '<leader>ta', function() require('vscode-neovim').action('test-explorer.run-all') end)
vim.keymap.set('n', '<leader>tf', function() require('vscode-neovim').action('test-explorer.run-file') end)
vim.keymap.set('n', '<leader>tc', function() require('vscode-neovim').action('test-explorer.run-test-at-cursor') end)
vim.keymap.set('n', '<leader>td', function() require('vscode-neovim').action('test-explorer.debug-test-at-cursor') end)

-- debug actions
vim.keymap.set('n', '<leader>dn', function() require('vscode-neovim').action('editor.debug.action.goToNextBreakpoint') end)
vim.keymap.set('n', '<leader>dp', function() require('vscode-neovim').action('editor.debug.action.goToPreviousBreakpoint') end)

-- git actions
-- vim.keymap.set('v', '<leader>gs', function() require('vscode-neovim').action('git.stageSelectedRanges') end)
-- vim.keymap.set('v', '<leader>gu', function() require('vscode-neovim').action('git.unstageSelectedRanges') endl
-- vim.keymap.set('v', '<leader>gr', function() require('vscode-neovim').action('git.revertSelectedRanges') end)
vim.keymap.set('n', '<leader>gs', function() require('vscode-neovim').action('git.stage') end)
vim.keymap.set('n', '<leader>gu', function() require('vscode-neovim').action('git.unstage') end)
vim.keymap.set('n', '<leader>gc', function() require('vscode-neovim').action('git.clean') end)
vim.keymap.set('n', '<leader>gj', function() require('vscode-neovim').action('editor.action.dirtydiff.next') end)
vim.keymap.set('n', '<leader>gk', function() require('vscode-neovim').action('editor.action.dirtydiff.previous') end)
vim.keymap.set('n', '<leader>gi', function() require('vscode-neovim').action('toggle.diff.renderSideBySide') end)

-- fold actions
vim.keymap.set('n', 'zp', function() require('vscode-neovim').action('editor.gotoParentFold') end)
vim.keymap.set('n', 'zC', function() require('vscode-neovim').action('editor.foldAll') end)
vim.keymap.set('n', 'zO', function() require('vscode-neovim').action('editor.unfoldAll') end)
vim.keymap.set('n', 'zj', function() require('vscode-neovim').action('editor.gotoNextFold') end)
vim.keymap.set('n', 'zk', function() require('vscode-neovim').action('editor.gotoPreviousFold') end)
vim.keymap.set('n', 'za', function() require('vscode-neovim').action('editor.toggleFold') end)
vim.keymap.set('n', 'zs', function() require('vscode-neovim').action('editor.action.toggleStickyScroll') end)

-- indentation
vim.keymap.set({ 'n', 'x' }, '>', function() require('vscode-neovim').action('editor.action.indentLines') end)
vim.keymap.set({ 'n', 'x' }, '<', function() require('vscode-neovim').action('editor.action.outdentLines') end)

-- move lines
vim.keymap.set('v', '<S-k>', function() require('vscode-neovim').action('editor.action.moveLinesUpAction') end)
vim.keymap.set('v', '<S-j>', function() require('vscode-neovim').action('editor.action.moveLinesDownAction') end)
