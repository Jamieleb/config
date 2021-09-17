local Terminal = require('toggleterm.terminal').Terminal
local console = Terminal:new({ cmd = 'rails c', hidden = true, close_on_exit = true })
local server = Terminal:new({ cmd = 'rails s', hidden = true, close_on_exit = true })
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

local wk = require('which-key')
wk.register({
  c = { '<cmd>lua _console_toggle()<CR>', 'toggle rails console' },
  s = { '<cmd>lua _server_toggle()<CR>', 'toggle rails server' },
  w = { '<cmd>lua _webpack_toggle()<CR>', 'toggle wepback-dev-server' },
  M = { '<cmd>lua require("custom.telescope").search_rails_models()<CR>', 'search models' },
  C = { '<cmd>lua require("custom.telescope").search_rails_controllers()<CR>', 'search controllers' },
  R = { '<cmd>lua require("custom.telescope").search_rails_components()<CR>', 'search React components' },
  V = { '<cmd>lua require("custom.telescope").search_rails_views()<CR>', 'search views' },
}, { prefix = '<leader>.' })
