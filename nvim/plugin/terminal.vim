" Toggleterm
lua << EOF
require("toggleterm").setup{
  open_mapping = [[<leader>tt]],
  start_in_insert = false,
  insert_mappings = false,
}
EOF
" Terminal Remaps
" Map Ctrl-n to enter normal mode in terminal buffer
tnoremap <C-Space> <C-\><C-N>

nnoremap <silent><leader>tX :ToggleTermCloseAll<CR>
nnoremap <silent><leader>tO :ToggleTermOpenAll<CR>

nnoremap <silent><leader>ts <Cmd>exe v:count1 . "ToggleTerm direction=horizontal size=30"<CR>
nnoremap <silent><leader>tv <Cmd>exe v:count1 . "ToggleTerm direction=vertical size=200"<CR>
nnoremap <silent><leader>tf <Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>
nnoremap <silent><leader>tw <Cmd>exe v:count1 . "ToggleTerm direction=window"<CR>

nnoremap <silent><leader>tS <Cmd>exe v:count1 . "TermExec size=30 direction=horizontal cmd=\"" . input('$ ') . "\""<CR>
nnoremap <silent><leader>tV <Cmd>exe v:count1 . "TermExec size=200 direction=vertical cmd=\"" . input('$ ') . "\""<CR>
nnoremap <silent><leader>tF <Cmd>exe v:count1 . "TermExec direction=float cmd=\"" . input('$ ') . "\""<CR>
nnoremap <silent><leader>tW <Cmd>exe v:count1 . "TermExec direction=window cmd=\"" . input('$ ') . "\""<CR>

nnoremap <silent><leader>ths <Cmd>exe v:count1 . "TermExec open=0 size=30 direction=horizontal cmd=\"" . input('$ ') . "\""<CR>
nnoremap <silent><leader>thv <Cmd>exe v:count1 . "TermExec open=0 size=200 direction=vertical cmd=\"" . input('$ ') . "\""<CR>
nnoremap <silent><leader>thf <Cmd>exe v:count1 . "TermExec open=0 direction=float cmd=\"" . input('$ ') . "\""<CR>
nnoremap <silent><leader>thw <Cmd>exe v:count1 . "TermExec open=0 direction=window cmd=\"" . input('$ ') . "\""<CR>
