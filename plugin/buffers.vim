nnoremap <silent><Leader>bN :DashboardNewFile<CR>
nnoremap <silent><Leader>bk :BufferClose<CR>
nnoremap <silent><Leader>bn :BufferNext<CR>
nnoremap <silent><Leader>bp :BufferPrevious<CR>
nnoremap <silent><Leader>bb :Telescope buffers<CR>
nnoremap <silent><Leader>bg :BufferPick<CR>

" Kill all buffers apart from the current one
nnoremap <silent><Leader>bo :%bd\|e#\|bd#<CR>

