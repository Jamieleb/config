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

" Enable completion in every buffer
" autocmd BufEnter * lua require'completion'.on_attach()

lua << EOF
local saga = require 'lspsaga'

saga.init_lsp_saga()
EOF

nnoremap <silent><leader>ld :Lspsaga preview_definition<CR>
nnoremap <silent><leader>lD :lua vim.lsp.buf.definition()<CR>
nnoremap <silent><leader>lr :Lspsaga rename<CR>
nnoremap <silent><leader>lk :Lspsaga hover_doc<CR>
nnoremap <silent><leader>le :Lspsaga show_line_diagnostics<CR>
nnoremap <silent><leader>ln :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent><leader>lp :Lspsaga diagnostic_jump_previous<CR>
nnoremap <silent><leader>ll :lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <silent><leader>la :Lspsaga code_action<CR>
vnoremap <silent><leader>la :<C-U>Lspsaga range_code_action<CR>
nnoremap <silent><leader>lc :lua vim.lsp.stop_client(vim.lsp.get_active_clients())
nnoremap <silent><leader>ls :Telescope lsp_document_symbols<CR>
nnoremap <silent><leader>lS :Telescope lsp_workspace_symbols<CR>
nnoremap <silent><leader>li :Telescope lsp_implementations<CR>
nnoremap <silent><leader>lf :Lspsaga lsp_finder<CR>

" Scroll hover docs
nnoremap <silent><C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent><C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

imap <c-j> <Plug>(completion_next_source)
imap <c-k> <Plug>(completion_prev_source)
