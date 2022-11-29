--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]

require('user.plugins')
require('user.fidget')
require('user.surround')
require('user.terminal')
-- require('user.toggletasks')
require('user.telescope')
require('user.options')
require('user.keymaps')
require('user.zen-mode')
require('user.lsp')
require('user.indent-blankline')
require('user.reach')

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
