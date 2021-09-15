" Cut/Copy/Paste Remaps
vnoremap <Leader>p "_dP
nnoremap <Leader>y "*y
vnoremap <Leader>y "*y
nnoremap <Leader>d "_d
vnoremap <Leader>d "_d
nnoremap <Leader>c "_c
vnoremap <Leader>c "_c
nnoremap Y y$
nnoremap <Leader>Y "*y$

" Move lines up and down in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Other remaps
" Source init.vim
nnoremap <silent><Leader>% :so ~/config/init.vim<CR>
" clear search highlighting
nnoremap <silent><Leader><CR> :noh<CR>
" better keymap for going to last file
nnoremap <leader><BS> <C-^>

augroup highlight_yank
  autocmd!
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank{higroup='IncSearch', timeout=700}
augroup END

nmap <Leader>= <Plug>(dial-increment)
nmap <Leader>- <Plug>(dial-decrement)

" keep cursor centered when jumping and line concatenating
"   src ThePrimagen https://www.youtube.com/watch?v=hSHATqh8svM&t=450s
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo break points
"   src ThePrimagen https://www.youtube.com/watch?v=hSHATqh8svM&t=450s
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" jumplist mutations
"   src ThePrimagen https://www.youtube.com/watch?v=hSHATqh8svM&t=450s
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
