" Cut/Copy/Paste Remaps
vnoremap <Leader>p "_dP
nnoremap <Leader>y "*y
vnoremap <Leader>y "*y
nnoremap <Leader>d "_d
vnoremap <Leader>d "_d

" Buffer commands

nnoremap <silent><Leader>bn :DashboardNewFile<CR>
nnoremap <silent><Leader>bk :bdelete<CR>
nnoremap <silent><Leader>bo :%bd\|e#\|bd#<CR>

" Other Plugin Remaps
nnoremap <silent><Leader>wf :MaximizerToggle<CR>
