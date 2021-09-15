" Show asyncrun status in airline
let g:asyncrun_status = ''
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])

nnoremap <Leader>rr :execute 'AsyncRun '.input('Async run > ')<CR>
