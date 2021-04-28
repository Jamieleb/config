" LSP & Completion
set completeopt=menuone,noinsert,noselect
let g:completion_enable_auto_popup = 1
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

let g:completion_chain_complete_list = [
  \{'complete_items': ['lsp']},
  \{'complete_items': ['buffers']},
  \{'mode': '<c-p>'},
  \{'mode': '<c-n>'}
\]

let g:completion_auto_change_source = 1

" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()

nnoremap <leader>Ld :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>Lr :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>Lk :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>Le :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <leader>Ll :lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <leader>La :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>Lc :lua vim.lsp.stop_client(vim.lsp.get_active_clients())

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

imap <c-j> <Plug>(completion_next_source)
imap <c-k> <Plug>(completion_prev_source)
