lvim.plugins = {
  "j-hui/fidget.nvim",
  "windwp/nvim-ts-autotag",
  "kylechui/nvim-surround",
  "folke/zen-mode.nvim",
  "jose-elias-alvarez/typescript.nvim",
  "mxsdev/nvim-dap-vscode-js",
  "folke/tokyonight.nvim",
  'kvrohit/mellow.nvim',
  'savq/melange',
  "folke/trouble.nvim",
  "rcarriga/nvim-dap-ui",
  'lukas-reineke/indent-blankline.nvim',
  'toppair/reach.nvim',
  {
    'folke/trouble.nvim',
    cmd = 'TroubleToggle',
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
        other_win_hl_color = "#80e7f2",
      })
    end,
  },
}
