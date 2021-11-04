require'neogit'.setup()
require('gitsigns').setup {
  keymaps = {
    -- Default keymap options
    noremap = true,

    ['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'"},
    ['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'"},

    ['n <leader>gs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
    ['v <leader>gs'] = '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
    ['n <leader>gu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
    ['n <leader>gr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
    ['v <leader>gr'] = '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
    ['n <leader>gR'] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
    ['n <leader>gv'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
    ['n <leader>gb'] = '<cmd>lua require"gitsigns".blame_line(true)<CR>',

    -- Text objects
    ['o ih'] = ':<C-U>lua require"gitsigns".select_hunk()<CR>',
    ['x ih'] = ':<C-U>lua require"gitsigns".select_hunk()<CR>'
  }
}

local wk = require('which-key')
wk.register({
  g = {
    name = 'git',
    g = { '<cmd>Neogit<CR>', 'Neogit' },
    l = { '<cmd>LazyGit<CR>', 'LazyGit' },
    c = { '<cmd>Neogit commit<CR>', 'Commit' },
    m = { '<cmd>AsyncRun git checkout master && git pull<CR>', 'checkout master' },
    d = { '<cmd>AsyncRun git checkout develop && git pull<CR>', 'checkout develop' },
    p = { '<cmd>AsyncRun git pull<CR>', 'pull' },
    P = { '<cmd>AsyncRun git push<CR>', 'push' },
    h = {
      name = 'github',
      c = { "<cmd>execute 'AsyncRun gh pr checkout '.input('checkout PR > ')<CR>", 'checkout PR by number' },
    },
    s = { 'stage hunk' },
    u = { 'unstage hunk' },
    r = { 'reset hunk' },
    R = { 'reset buffer' },
    v = { 'preview hunk' },
    b = { 'blame line' },
  },
}, { prefix = '<leader>' })
