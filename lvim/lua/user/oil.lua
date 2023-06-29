local status_ok, oil = pcall(require, 'oil')
if not status_ok then
  return
end

oil.setup()

vim.api.nvim_create_user_command('OilAtCursor', function()
  require('user.float').create_centred_float(40, 30, true)
  require('oil').open()
end, { nargs = 0 })

vim.api.nvim_create_user_command('OilCentred', function()
  require('user.float').create_centred_float(40, 30, false)
  require('oil').open()
end, { nargs = 0 })

lvim.builtin.which_key.mappings['o'] = {
  name = '+Oil',
  w = { '<cmd>lua require("oil").open()<CR>', 'At file in current window' },
  W = { '<cmd>lua require("oil").open(".")<CR>', 'CWD in current window' },
  f = {
    '<cmd>lua require("oil").open_float()<CR>',
    'At file in full screen',
  },
  F = {
    '<cmd>lua require("oil").open_float(".")<CR>',
    'CWD in full screen',
  },
  s = { '<cmd>OilAtCursor<CR>', 'At file in small float' },
  c = { '<cmd>OilCentred<CR>', 'At file in centered small float' }
}
