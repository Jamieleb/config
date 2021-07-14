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

let g:completion_auto_change_source = 0

" Enable completion in every buffer
autocmd BufEnter * lua require'completion'.on_attach()

nnoremap <leader>cd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>cR :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>ck :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>ce :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <leader>cl :lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <leader>ca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>cc :lua vim.lsp.stop_client(vim.lsp.get_active_clients())
nnoremap <leader>cs :Telescope lsp_document_symbols<CR>
nnoremap <leader>cS :Telescope lsp_workspace_symbols<CR>
nnoremap <leader>ci :Telescope lsp_implementations<CR>

" imap <tab> <Plug>(completion_smart_tab)
" imap <s-tab> <Plug>(completion_smart_s_tab)

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

imap <c-j> <Plug>(completion_next_source)
imap <c-k> <Plug>(completion_prev_source)
