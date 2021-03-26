let g:floaterm_width = 0.9
let g:floaterm_height = 0.7
let g:floaterm_autohide = v:false

nnoremap <silent> <Leader>tn :FloatermNew<CR>
nnoremap <silent> <Leader>tt :FloatermToggle<CR>
nnoremap <silent> <Leader>tc :FloatermKill<CR>
tnoremap <silent> <C-n> <C-\><C-n>:FloatermNew<CR>
tnoremap <silent> <C-l> <C-\><C-n>:FloatermNext<CR>
tnoremap <silent> <C-h> <C-\><C-n>:FloatermPrev<CR>
tnoremap <silent> <C-j> <C-\><C-n>:FloatermToggle<CR>
tnoremap <silent> <C-k> <C-\><C-n>:FloatermKill<CR>

nnoremap <Leader>ro :FloatermNew ranger<CR>
nnoremap <Leader>go :FloatermNew lazygit<CR>
