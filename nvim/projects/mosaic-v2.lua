local Terminal = require('toggleterm.terminal').Terminal
local console = Terminal:new({ cmd = 'rails c', hidden = true, close_on_exit = true })
local server = Terminal:new({ cmd = 'rails s', hidden = true, close_on_exit = true })
local webpack = Terminal:new({ cmd = 'nvm use && yarn && ./bin/webpack-dev-server', hidden = true, close_on_exit = true })
local custom_tele = require('custom.telescope')

function _rails_models() custom_tele.search_path('./app/models/', 'Models') end
function _rails_controllers() custom_tele.search_path('./app/controllers/', 'Controllers') end
function _rails_views() custom_tele.search_path('./app/views/', 'Views') end
function _rails_services() custom_tele.search_path('./app/services/', 'Services') end
function _rails_resources() custom_tele.search_path('./app/resources/', 'Resourcees') end
function _rails_components() custom_tele.search_path('./app/webpackers/components/', 'Services') end

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
  M = { '<cmd>lua _rails_models()<CR>', 'search models' },
  C = { '<cmd>lua _rails_controllers()<CR>', 'search controllers' },
  R = { '<cmd>lua _rails_components()<CR>', 'search React components' },
  V = { '<cmd>lua _rails_views()<CR>', 'search views' },
  S = { '<cmd>lua _rails_services()<CR>', 'search services' },
  G = { '<cmd>lua _rails_resources()<CR>', 'search graphiti resources' },
}, { prefix = '<leader>.' })
