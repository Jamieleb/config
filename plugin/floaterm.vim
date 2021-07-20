let g:floaterm_width = 0.9
let g:floaterm_height = 0.7
let g:floaterm_autohide = v:false

nnoremap <silent> <Leader>tn :FloatermNew<CR>
nnoremap <silent> <Leader>tt :FloatermToggle<CR>
nnoremap <silent> <Leader>tc :FloatermKill<CR>
nnoremap <silent> <Leader>tk :FloatermKill<CR>

tnoremap <silent> <C-l> <C-\><C-n>:FloatermNext<CR>
tnoremap <silent> <C-h> <C-\><C-n>:FloatermPrev<CR>
tnoremap <silent> <C-j> <C-\><C-n>:FloatermNew<CR>
tnoremap <silent> <C-k> <C-\><C-n>:FloatermKill<CR>
tnoremap <silent> <C-t> <C-\><C-n>:FloatermToggle<CR>

nnoremap <Leader>or :FloatermNew ranger<CR>
nnoremap <Leader>gg :Neogit<CR>
nnoremap <Leader>gl :LazyGit<CR>
nnoremap <Leader>gc :Neogit commit<CR>
nnoremap <Leader>g. :FloatermNew cd ~/config && lazygit<CR>
nnoremap <Leader>gs :FloatermNew gh pr status<CR>
