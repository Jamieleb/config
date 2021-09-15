require("toggleterm").setup{
  open_mapping = [[<leader>tt]],
  start_in_insert = false,
  insert_mappings = false,
}

local wk = require('which-key')
wk.register({
  t = {
    name = 'terminal',
    t = { 'toggle {count} terminal' },
    s = { '<Cmd>exe v:count1 . "ToggleTerm direction=horizontal size=30"<CR>', 'toggle {count} terminal in horizontal split' },
    v = { '<Cmd>exe v:count1 . "ToggleTerm direction=vertical size=200"<CR>', 'toggle {count} temrinal in vertical split' },
    f = { '<Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>', 'toggle {count} floating terminal' },
    w = { '<Cmd>exe v:count1 . "ToggleTerm direction=window"<CR>', 'toggle {count} terminal in window' },
    X = { '<cmd>ToggleTermCloseAll<CR>', 'hide all terminals' },
    O = { '<cmd>ToggleTermOpenAll<CR>', 'show all terminals' },
  }
}, { prefix = '<leader>' })
