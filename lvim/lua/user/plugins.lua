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
  'glepnir/lspsaga.nvim',
  'TimUntersberger/neogit',
  { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' },
  {
    'phaazon/mind.nvim',
    branch = 'v2.2',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require'mind'.setup()
    end
  },
  {
    'rmagatti/goto-preview',
    config = function()
      require('goto-preview').setup()
    end,
  },
  {
    "s1n7ax/nvim-window-picker",
    tag = "1.*",
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
    requires = { 'nvim-treesitter' },
    config = function()
      require('treesj').setup({
        use_default_keymaps = false,
      })
    end,
  },
}
