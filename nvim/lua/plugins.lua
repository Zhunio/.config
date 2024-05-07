return {
  -- Startup
  {
    "goolord/alpha-nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.startify")

      dashboard.section.header.val = {
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                     ]],
        [[       ████ ██████           █████      ██                     ]],
        [[      ███████████             █████                             ]],
        [[      █████████ ███████████████████ ███   ███████████   ]],
        [[     █████████  ███    █████████████ █████ ██████████████   ]],
        [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
        [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
        [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
      }

      alpha.setup(dashboard.opts)
    end,
  },
  -- Theme
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = function()
      require("onedarkpro").setup({
        styles = {
          comments = "italic",
          keywords = "bold"
        },
        options = {
          transparency = true,
        },
        highlights = {
          -- purple
          ["Function"] = { link = "Keyword" },
          ["typescriptImport"] = { link = "Keyword" },
          ["typescriptExport"] = { link = "Keyword" },
          ["typescriptIdentifier"] = { link = "Keyword" },
          ["typescriptVariable"] = { link = "Keyword" },
          ["typescriptCastKeyword"] = { link = "Keyword" },
          -- red
          ["Identifier"] = { fg = "${red}", bold = true },
          ["typescriptBlock"] = { link = "Identifier" },
          ["typescriptMember"] = { link = "Identifier" },
          ["@lsp.type.property.typescript"] = { link = "Identifier" },
          ["@lsp.mod.readonly.typescript"] = { link = "Identifier" },
          -- green
          ["typescriptString"] = { fg = "${green}", bold = true },
          -- blue
          ["typescriptFuncName"] = { fg = "${blue}", bold = true },
          ["@lsp.type.function.typescript"] = { link = "typescriptFuncName" },
          ["@lsp.type.member.typescript"] = { link = "typescriptFuncName" },
          ["@lsp.type.method.lua"] = { link = "typescriptFuncName" },
          -- yellow
          ["typescriptCall"] = { fg = "${yellow}", bold = true },
          ["typescriptPredefinedType"] = { link = "typescriptCall" },
          ["@lsp.type.parameter.typescript"] = { link = "typescriptCall" },
          ["@lsp.type.interface.typescript"] = { link = "typescriptCall" },
          ["@lsp.type.class.typescript"] = { link = "typescriptCall" },
          -- other color
          ["@lsp.type.variable.typescript"] = { link = "@constant" },
          ["@variable"] = { link = "@constant" },
        },
      })
      vim.cmd("colorscheme onedark")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "onedark",
        },
      })
    end,
  },
  -- File Explorer
  {
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
  },
  -- Tabs
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup({
        options = {
          truncate_names = false,
          mode = 'buffers',
          offsets = {
            {
              filetype = "NvimTree",
              highlight = "Directory",
              separator = true
            }
          }
        }
      })
    end,
  },
  {
    "kazhala/close-buffers.nvim",
  },
  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fp", ":Telescope current_buffer_fuzzy_find<CR>", {})
      vim.keymap.set("n", "<leader>fc", ":Telescope commands<CR>", {})
      vim.keymap.set("n", "<leader>fb", builtin.git_branches, {})
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
      vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})
    end,
  },
  -- harpoon
  {
    "ThePrimeagen/harpoon",
    config = function()
      require("harpoon").setup({
        -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
        save_on_toggle = false,

        -- saves the harpoon file upon every change. disabling is unrecommended.
        save_on_change = true,

        -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
        enter_on_sendcmd = false,

        -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
        tmux_autoclose_windows = false,

        -- filetypes that you want to prevent from adding to the harpoon list menu.
        excluded_filetypes = { "harpoon" },

        -- set marks specific to each git branch inside git repository
        mark_branch = false,

        -- enable tabline with harpoon marks
        tabline = false,
        tabline_prefix = "   ",
        tabline_suffix = "   ",
      })

      require("telescope").load_extension("harpoon")

      -- harpoon
      vim.keymap.set("n", "ht", require("harpoon.mark").toggle_file)
      vim.keymap.set("n", "hn", require("harpoon.ui").nav_next)
      vim.keymap.set("n", "hp", require("harpoon.ui").nav_prev)
      vim.keymap.set("n", "hm", ":Telescope harpoon marks<CR>")
    end,
  },
  -- LSP & Treesitter
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "html", "cssls", "tsserver", "angularls" },
      })

      local on_attach = function()
        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {})
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
        vim.keymap.set("n", "g=", vim.lsp.buf.code_action, {})
      end

      local lspConfig = require("lspconfig")
      lspConfig.lua_ls.setup({ on_attach = on_attach })
      lspConfig.html.setup({ on_attach = on_attach })
      lspConfig.cssls.setup({ on_attach = on_attach })
      lspConfig.tsserver.setup({ on_attach = on_attach })
      lspConfig.angularls.setup({ on_attach = on_attach })
    end,
  },
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
  -- auto completion
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lsp",
      "saadparwaiz1/cmp_luasnip",
      "onsails/lspkind.nvim",
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      local lspkind = require("lspkind")

      require("luasnip.loaders.from_vscode").lazy_load()

      vim.opt.completeopt = "menu,menuone,noselect"

      local kind_icons = {
        Text = "󰉿",
        Method = "󰆧",
        Function = "󰊕",
        Constructor = "",
        Field = " ",
        Variable = "󰀫",
        Class = "󰠱",
        Interface = "",
        Module = "",
        Property = "󰜢",
        Unit = "󰑭",
        Value = "󰎠",
        Enum = "",
        Keyword = "󰌋",
        Snippet = "",
        Color = "󰏘",
        File = "󰈙",
        Reference = "",
        Folder = "󰉋",
        EnumMember = "",
        Constant = "󰏿",
        Struct = "",
        Event = "",
        Operator = "󰆕",
        TypeParameter = " ",
        Misc = " ",
      }
      -- find more here: https://www.nerdfonts.com/cheat-sheet

      cmp.setup({
        window = {
          documentation = {
            border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
          },
          completion = {
            border = { '┌', '─', '┐', '│', '┘', '─', '└', '│' },
          },
        },
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-k>"] = cmp.mapping.select_prev_item(),
          ["<C-j>"] = cmp.mapping.select_next_item(),
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm(),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        }),
        formatting = {
          fields = { "kind", "abbr", "menu" },
          format = function(entry, vim_item)
            vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
            vim_item.menu = ({})[entry.source.name]

            return vim_item
          end
        },
      })
      -- Transparent window
      vim.cmd("highlight Pmenu guibg=NONE")
    end,
  },
  -- git
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup {
        signs = {
          add = { text = '┃' },
          change = { text = '┃' },
          delete = { text = '_' },
          topdelete = { text = '‾' },
          changedelete = { text = '~' },
          untracked = { text = '┆' },
        },
        signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
        numhl = false,     -- Toggle with `:Gitsigns toggle_numhl`
        linehl = false,    -- Toggle with `:Gitsigns toggle_linehl`
        word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
        watch_gitdir = { follow_files = true },
        auto_attach = true,
        attach_to_untracked = false,
        current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
          delay = 1000,
          ignore_whitespace = false,
          virt_text_priority = 100,
        },
        current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
        current_line_blame_formatter_opts = {
          relative_time = false,
        },
        sign_priority = 6,
        update_debounce = 100,
        status_formatter = nil,  -- Use default
        max_file_length = 40000, -- Disable if file is longer than this (in lines)
        preview_config = {
          -- Options passed to nvim_open_win
          border = 'single',
          style = 'minimal',
          relative = 'cursor',
          row = 0,
          col = 1
        },
      }
    end
  },
  {
    "tpope/vim-fugitive"
  },
  -- other
  {
    "mg979/vim-visual-multi"
  },
  {
    "christoomey/vim-tmux-navigator",
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup({
        toggler = { line = "<leader>c" },
        opleader = { line = "<leader>c" },
      })
    end,
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    },
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
    }
  }
}
