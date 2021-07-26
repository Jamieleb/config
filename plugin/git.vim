nnoremap <Leader>gg :Neogit<CR>
nnoremap <Leader>gl :LazyGit<CR>
nnoremap <Leader>gc :Neogit commit<CR>
nnoremap <Leader>g. :FloatermNew cd ~/config && lazygit<CR>

" Git and Github actions
nnoremap <Leader>ghs :FloatermNew gh pr status<CR>
nnoremap <Leader>ghc :execute 'AsyncRun gh pr checkout '.input('checkout PR > ')<CR>
nnoremap <Leader>gm :AsyncRun git checkout master && git pull<CR>
nnoremap <Leader>gd :AsyncRun git checkout develop && git pull<CR>
nnoremap <Leader>gp :AsyncRun git pull<CR>
nnoremap <Leader>gP :AsyncRun git push<CR>

" Run dotfiles install script
nnoremap <Leader>g. :AsyncRun cd ~/config && lazygit<CR>

" Gitsigns
lua << EOF
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
EOF
nnoremap <silent><Leader>gB :Gitsigns toggle_current_line_blame<CR>
