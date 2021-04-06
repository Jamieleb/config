" Show asyncrun status in airline
let g:asyncrun_status = ''
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])

" AsyncRun default quickfix list show
nnoremap <Leader>rn :execute 'AsyncRun '.input('Async run > ')<CR>

" Run dotfiles install script
nnoremap <Leader>.i :AsyncRun cd ~/config && ./install<CR>
