" LSP & Completion
lua require('lsp')

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

imap <c-j> <Plug>(completion_next_source)
imap <c-k> <Plug>(completion_prev_source)
