" Show asyncrun status in airline
let g:asyncrun_status = ''
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])

nnoremap <Leader>rr :execute 'AsyncRun '.input('Async run > ')<CR>

" Git and Github actions
nnoremap <Leader>gp :execute 'AsyncRun gh pr checkout '.input('checkout PR > ')<CR>
nnoremap <Leader>gm :AsyncRun git checkout master && git pull<CR>
nnoremap <Leader>gd :AsyncRun git checkout develop && git pull<CR>
nnoremap <Leader>gc :execute 'AsyncRun git add . && git commit -m "'.input('Commit message > ')<CR>

" Run dotfiles install script
nnoremap <Leader>.i :AsyncRun cd ~/config && ./install<CR>
