" Quickfix and Location List
" Open/close
noremap <silent><Leader>qq :call asyncrun#quickfix_toggle(8)<CR>
nnoremap <Leader>qo :copen<CR>
nnoremap <Leader>qc :cclose<CR>
nnoremap <Leader>lo :lopen<CR>
nnoremap <Leader>lc :lclose<CR>

" Navigate
nnoremap <Leader>qj :cnext<CR>
nnoremap <Leader>qk :cprevious<CR>
nnoremap <Leader>lj :lnext<CR>
nnoremap <Leader>lk :lprevious<CR>
