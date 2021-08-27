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
