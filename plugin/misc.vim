" Cut/Copy/Paste Remaps
vnoremap <Leader>p "_dP
nnoremap <Leader>y "*y
vnoremap <Leader>y "*y
nnoremap <Leader>d "_d
vnoremap <Leader>d "_d
nnoremap <Leader>c "_c
vnoremap <Leader>c "_c
nnoremap <Leader>x "_x
vnoremap <Leader>x "_x

" Move lines up and down in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Other remaps
" Source init.vim
nnoremap <silent><Leader>% :so ~/config/init.vim<CR>
" clear search highlighting
nnoremap <silent><Leader><CR> :noh<CR>
" Non-chord command mode
nnoremap <Leader>; :

augroup highlight_yank
  autocmd!
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank{higroup='IncSearch', timeout=700}
augroup END
