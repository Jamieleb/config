local Terminal = require('toggleterm.terminal').Terminal
local console = Terminal:new({ cmd = 'rails c', hidden = true, close_on_exit = true })
local server = Terminal:new({ cmd = 'rails s', hidden = true, close_on_exit = false })
local webpack = Terminal:new({ cmd = 'nvm use && yarn && ./bin/webpack-dev-server', hidden = true, close_on_exit = true })

function _console_toggle()
  console:toggle()
end

function _server_toggle()
  server:toggle()
end

function _webpack_toggle()
  webpack:toggle()
end

vim.api.nvim_set_keymap('n', '<Space>.c', "<cmd>lua _console_toggle()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>.s', "<cmd>lua _server_toggle()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>.w', "<cmd>lua _webpack_toggle()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Space>.M', "<cmd>lua require('custom.telescope').search_rails_models()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>.C', "<cmd>lua require('custom.telescope').search_rails_controllers()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>.R', "<cmd>lua require('custom.telescope').search_rails_components()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>.V', "<cmd>lua require('custom.telescope').search_rails_views()<CR>", { noremap = true, silent = true })
