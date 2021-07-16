nnoremap <silent><Leader>bN :DashboardNewFile<CR>
nnoremap <silent><Leader>bk :bdelete<CR>
nnoremap <silent><Leader>bn :bnext<CR>
nnoremap <silent><Leader>bp :bprevious<CR>
nnoremap <silent><Leader>bb :Telescope buffers<CR>

" Kill all buffers apart from the current one
nnoremap <silent><Leader>bo :%bd\|e#\|bd#<CR>

