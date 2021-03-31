nnoremap <silent><Leader>bn :DashboardNewFile<CR>
nnoremap <silent><Leader>bk :bdelete<CR>
nnoremap <silent><Leader><Tab> :bnext<CR>
nnoremap <silent><Leader><S-Tab> :bprevious<CR>

" Kill all buffers apart from the current one
nnoremap <silent><Leader>bo :%bd\|e#\|bd#<CR>
