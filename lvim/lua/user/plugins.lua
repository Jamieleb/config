lvim.plugins = {
  "j-hui/fidget.nvim",
  "windwp/nvim-ts-autotag",
  "kylechui/nvim-surround",
  "folke/zen-mode.nvim",
  "jose-elias-alvarez/typescript.nvim",
  "mxsdev/nvim-dap-vscode-js",
  "folke/tokyonight.nvim",
  "gbprod/nord.nvim",
  'kvrohit/mellow.nvim',
  'savq/melange',
  'sainnhe/sonokai',
  'Yazeed1s/oh-lucy.nvim',
  "folke/trouble.nvim",
  "rcarriga/nvim-dap-ui",
  'lukas-reineke/indent-blankline.nvim',
  'toppair/reach.nvim',
  'ray-x/lsp_signature.nvim',
  {
    'nvimdev/lspsaga.nvim',
    event = "LspAttach",
    config = function()
      require('lspsaga').setup()
    end,
    dependencies = {
      { 'nvim-tree/nvim-web-devicons' },
      { 'nvim-treesitter/nvim-treesitter' }
    }
  },
  'TimUntersberger/neogit',
  'stevearc/oil.nvim',
  { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' },
  {
    'phaazon/mind.nvim',
    branch = 'v2.2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require 'mind'.setup()
    end
  },
  {
    "s1n7ax/nvim-window-picker",
    config = function()
      require("window-picker").setup({
        autoselect_one = true,
        include_current = false,
        filter_rules = {
          -- filter using buffer options
          bo = {
            -- if the file type is one of following, the window will be ignored
            filetype = { "neo-tree", "neo-tree-popup", "notify", "quickfix" },

            -- if the buffer type is one of following, the window will be ignored
            -- buftype = { "terminal" },
          },
        },
      })
    end,
  },
  {
    'Wansmer/treesj',
    dependencies = { 'nvim-treesitter' },
    config = function()
      require('treesj').setup({
        use_default_keymaps = false,
      })
    end,
  },
  {
    'debugloop/telescope-undo.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require("telescope").load_extension("undo")
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup {
          plugin_manager_path = get_runtime_dir() .. "/site/pack/packer",
        }
      end, 100)
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua", "nvim-cmp" },
  },
  {
    "stevearc/dressing.nvim",
    opts = {}
  },
  {
    'maxmx03/fluoromachine.nvim',
    config = function()
      local fm = require 'fluoromachine'
      fm.setup {
        glow = true,
        theme = 'retrowave'
      }
    end
  },
  {
    'google/executor.nvim',
    config = function()
      require("executor").setup({})
    end,
    dependencies = {
      "MunifTanjim/nui.nvim"
    }
  },
  {
    'folke/flash.nvim',
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
  }
}

lvim.builtin.cmp.formatting.source_names['copilot'] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = 'copilot' })
