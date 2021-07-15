" Show asyncrun status in airline
let g:asyncrun_status = ''
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])

nnoremap <Leader>rr :execute 'AsyncRun '.input('Async run > ')<CR>

" Git and Github actions
nnoremap <Leader>ghc :execute 'AsyncRun gh pr checkout '.input('checkout PR > ')<CR>
nnoremap <Leader>gm :AsyncRun git checkout master && git pull<CR>
nnoremap <Leader>gd :AsyncRun git checkout develop && git pull<CR>
nnoremap <Leader>gc :execute 'AsyncRun git add . && git commit -m "'.input('Commit message > ')<CR>
nnoremap <Leader>gp :AsyncRun git pull<CR>
nnoremap <Leader>gP :AsyncRun git push<CR>
nnoremap <Leader>gb :Telescope git_branches<CR>
nnoremap <Leader>gs :Telescope git_status<CR>

" Run dotfiles install script
nnoremap <Leader>g. :AsyncRun cd ~/config && lazygit<CR>
