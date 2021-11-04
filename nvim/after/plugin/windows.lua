local wk = require('which-key')
wk.register({
  w = {
    name = 'window',
    j = { '<C-w>j', 'move to window below' },
    k = { '<C-w>k', 'move to window above' },
    l = { '<C-w>l', 'move to right window' },
    h = { '<C-w>h', 'move to left window' },
    c = { '<C-w>c', 'close window' },
    d = { '<C-w>c', 'close window' },
    v = { '<C-w>v', 'vertical split' },
    s = { '<C-w>s', 'horizontal split' },
    ['='] = { '<C-w>=', 'balance splits' },
    f = { '<C-w>f', 'open file in horizontal split' },
    F = { '<cmd>vertical wincmd f<CR>', 'open file in vertical split' },
    r = { '<C-w>r', 'rotate windows clockwise' },
    R = { '<C-w>R', 'rotate windows anti-clockwise' },
    J = { '<C-w>J', 'move window to bottom' },
    K = { '<C-w>K', 'move window to top' },
    L = { '<C-w>L', 'move window to right' },
    H = { '<C-w>H', 'move window to left' },
    T = { '<C-w>T', 'move window to new tab' },
    t = {
      name = 'tab',
      n = { '<cmd>tabnew<CR>', 'new tab' },
      f = { '<C-w>gf', 'open file in new tab' },
      c = { '<cmd>tabc<CR>', 'close tab' },
    },
    m = { '<cmd>MaximizerToggle<CR>', 'toggle maximise window' },
  }
}, { prefix = '<leader>' })
