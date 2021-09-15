require'lightspeed'.setup {
  jump_to_first_match = true,
  highlight_unique_chars = true,
  grey_out_search_area = true,
}

local wk = require('which-key')
wk.register({
  q = {
    name = 'quickfix',
    q = { '<cmd>TroubleToggle<CR>', 'toggle Trouble' },
    o = { '<cmd>Trouble quickfix<CR>', 'open trouble quickfix list' },
    c = { '<cmd>cclose<CR>', 'close quickfix list' },
    O = { '<cmd>Trouble loclist<CR>', 'open trouble location list' },
    C = { '<cmd>lclose<CR>', 'close location list' },
    n = { '<cmd>lua require("trouble").next({ skip_groups = true, jump = true })<CR>', 'Trouble next' },
    p = { '<cmd>lua require("trouble").previous({ skip_groups = true, jump = true })<CR>', 'Trouble previous' },
  },
  j = { '<C-f>', 'page down' },
  k = { '<C-b>', 'page up' },
  o = {
    name = 'open',
    r = { '<cmd>RnvimrToggle<CR>', 'ranger' },
  },
}, { prefix = '<leader>' })
