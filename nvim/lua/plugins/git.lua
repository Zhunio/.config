return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns

          local function nextChange()
            if vim.wo.diff then return '<leader>gj' end
            vim.schedule(function() gs.next_hunk() end)
            return '<Ignore>'
          end
          local function previousChange()
            if vim.wo.diff then return '<leader>gk' end
            vim.schedule(function() gs.prev_hunk() end)
            return '<Ignore>'
          end

          vim.keymap.set('n', '<leader>gS', gs.stage_hunk, { buffer = bufnr })
          vim.keymap.set('v', '<leader>gS', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end, { buffer = bufnr })
          vim.keymap.set('n', '<leader>gU', gs.undo_stage_hunk, { buffer = bufnr })
          vim.keymap.set('n', '<leader>gC', gs.reset_hunk, { buffer = bufnr })
          vim.keymap.set('v', '<leader>gC', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end, { buffer = bufnr })
          vim.keymap.set('n', '<leader>gs', gs.stage_buffer, { buffer = bufnr })
          vim.keymap.set('n', '<leader>gc', gs.reset_buffer, { buffer = bufnr })
          vim.keymap.set('n', '<leader>gj', nextChange, { buffer = bufnr, expr=true})
          vim.keymap.set('n', '<leader>gk', previousChange, { buffer = bufnr, expr=true})
        end
      })
		end,
	},
	{
		"tpope/vim-fugitive",
	},
}
