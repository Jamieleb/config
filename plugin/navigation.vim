" Quickfix and Location List
" Open/close
noremap <silent><Leader>qq :call asyncrun#quickfix_toggle(8)<CR>
nnoremap <Leader>qo :copen<CR>
nnoremap <Leader>qc :cclose<CR>
nnoremap <Leader>Qo :lopen<CR>
nnoremap <Leader>Qc :lclose<CR>

" Navigate lists
nnoremap <Leader>qj :cnext<CR>
nnoremap <Leader>qk :cprevious<CR>
nnoremap <Leader>Qj :lnext<CR>
nnoremap <Leader>Qk :lprevious<CR>

" Vertical Navigation
nnoremap <Leader>j <C-f>
nnoremap <Leader>k <C-b>
