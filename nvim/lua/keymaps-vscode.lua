-- file
vim.keymap.set('n', '<leader>w', function() require('vscode-neovim').action('workbench.action.files.save') end)
vim.keymap.set('n', '<leader>q', function() require('vscode-neovim').action('workbench.action.closeActiveEditor') end)

-- indentation
vim.keymap.set({ 'n', 'x' }, '>', function() require('vscode-neovim').action('editor.action.indentLines') end)
vim.keymap.set({ 'n', 'x' }, '<', function() require('vscode-neovim').action('editor.action.outdentLines') end)

-- window split
vim.keymap.set('n', '<leader>ss', function() require('vscode-neovim').action('workbench.action.splitEditorDown') end)
vim.keymap.set('n', '<leader>sv', function() require('vscode-neovim').action('workbench.action.splitEditor') end)

-- buffers
vim.keymap.set('n', '<leader>l', function() require('vscode-neovim').action('workbench.action.nextEditor') end)
vim.keymap.set('n', '<leader>h', function() require('vscode-neovim').action('workbench.action.previousEditor') end)
vim.keymap.set('n', '<leader><left>', function() require('vscode-neovim').action('workbench.action.moveEditorLeftInGroup') end)
vim.keymap.set('n', '<leader><right>', function() require('vscode-neovim').action('workbench.action.moveEditorRightInGroup') end)

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
vim.keymap.set('n', 'Kh', function() require('vscode-neovim').action('editor.action.showHover') end)
vim.keymap.set('n', 'Kd', function() require('vscode-neovim').action('editor.action.showDefinitionPreviewHover') end)
vim.keymap.set('n', 'Kp', function() require('vscode-neovim').action('editor.action.triggerParameterHints') end)
vim.keymap.set('n', 'gd', function() require('vscode-neovim').action('editor.action.revealDefinition') end)
vim.keymap.set('n', 'gD', function() require('vscode-neovim').action('editor.action.peekDefinition') end)
vim.keymap.set('n', 'gr', function() require('vscode-neovim').action('editor.action.goToReferences') end)
vim.keymap.set('n', 'g=', function() require('vscode-neovim').action('editor.action.quickFix') end)

-- git actions
vim.keymap.set('v', 'gS', function() require('vscode-neovim').action('git.stageSelectedRanges') end)
vim.keymap.set('v', 'gU', function() require('vscode-neovim').action('git.unstageSelectedRanges') end)
vim.keymap.set('v', 'gC', function() require('vscode-neovim').action('git.revertSelectedRanges') end)
vim.keymap.set('n', 'gs', function() require('vscode-neovim').action('git.stage') end)
vim.keymap.set('n', 'gu', function() require('vscode-neovim').action('git.unstage') end)
vim.keymap.set('n', 'gc', function() require('vscode-neovim').action('git.clean') end)
vim.keymap.set('n', 'go', function() require('vscode-neovim').action('gitlens.openWorkingFile') end)
vim.keymap.set('n', 'gn', function() require('vscode-neovim').action('workbench.action.compareEditor.nextChange') end)
vim.keymap.set('n', 'gp', function() require('vscode-neovim').action('workbench.action.compareEditor.previousChange') end)
vim.keymap.set('n', '<leader>gn', function() require('vscode-neovim').action('editor.action.dirtydiff.next') end)
vim.keymap.set('n', '<leader>gp', function() require('vscode-neovim').action('editor.action.dirtydiff.previous') end)
vim.keymap.set('n', '<leader>gj', function() require('vscode-neovim').action('workbench.action.editor.nextChange') end)
vim.keymap.set('n', '<leader>gk', function() require('vscode-neovim').action('workbench.action.editor.previousChange') end)
vim.keymap.set('n', 'gi', function() require('vscode-neovim').action('toggle.diff.renderSideBySide') end)

-- fold actions
vim.keymap.set('n', 'zp', function() require('vscode-neovim').action('editor.gotoParentFold') end)
vim.keymap.set('n', 'zC', function() require('vscode-neovim').action('editor.foldAll') end)
vim.keymap.set('n', 'zO', function() require('vscode-neovim').action('editor.unfoldAll') end)
vim.keymap.set('n', 'zj', function() require('vscode-neovim').action('editor.gotoNextFold') end)
vim.keymap.set('n', 'zk', function() require('vscode-neovim').action('editor.gotoPreviousFold') end)
vim.keymap.set('n', 'za', function() require('vscode-neovim').action('editor.toggleFold') end)
vim.keymap.set('n', 'zs', function() require('vscode-neovim').action('editor.action.toggleStickyScroll') end)

-- Comments
vim.keymap.set({ 'n', 'x' }, '<leader>c', function() require('vscode-neovim').action('editor.action.commentLine') end)

-- Override pasting
vim.keymap.set('v', 'p', '"_dP');

