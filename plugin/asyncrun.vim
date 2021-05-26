" Show asyncrun status in airline
let g:asyncrun_status = ''
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])

nnoremap <Leader>rn :execute 'AsyncRun '.input('Async run > ')<CR>

" Git and Github actions
nnoremap <Leader>rgp :execute 'AsyncRun gh pr checkout '.input('checkout PR > ')<CR>
nnoremap <Leader>rgm :AsyncRun git checkout master && git pull<CR>
nnoremap <Leader>rgd :AsyncRun git checkout develop && git pull<CR>
nnoremap <Leader>rgc :execute 'AsyncRun git add . && git commit -m "'.input('Commit message > ')<CR>

" Run dotfiles install script
nnoremap <Leader>.i :AsyncRun cd ~/config && ./install<CR>
