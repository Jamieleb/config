" LSP & Completion
set completeopt=menuone,noinsert,noselect
let g:completion_enable_auto_popup = 1
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

let g:completion_chain_complete_list = [
  \{'complete_items': ['lsp']},
  \{'complete_items': ['buffers', 'path']},
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
nnoremap <silent><leader>lr :Trouble lsp_references<CR>
nnoremap <silent><leader>lR :Lspsaga rename<CR>
nnoremap <silent><leader>lk :Lspsaga hover_doc<CR>
nnoremap <silent><leader>le :Lspsaga show_line_diagnostics<CR>
nnoremap <silent><leader>ln :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent><leader>lp :Lspsaga diagnostic_jump_previous<CR>
nnoremap <silent><leader>ll :Trouble lsp_document_diagnostics<CR>
nnoremap <silent><leader>lL :Trouble lsp_workspace_diagnostics<CR>
nnoremap <silent><leader>la :Lspsaga code_action<CR>
vnoremap <silent><leader>la :<C-U>Lspsaga range_code_action<CR>
nnoremap <silent><leader>lc :lua vim.lsp.stop_client(vim.lsp.get_active_clients())
nnoremap <silent><leader>ls :Telescope lsp_document_symbols<CR>
nnoremap <silent><leader>lS :Telescope lsp_workspace_symbols<CR>
nnoremap <silent><leader>li :Telescope lsp_implementations<CR>
nnoremap <silent><leader>lf :Lspsaga lsp_finder<CR>
nnoremap <silent><Leader>lx :ISwap<CR>
nnoremap <silent><Leader>lX :ISwapWith<CR>

" Scroll hover docs
nnoremap <silent><C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent><C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

imap <c-j> <Plug>(completion_next_source)
imap <c-k> <Plug>(completion_prev_source)

lua << EOF
require('tabout').setup({
  tabkey = "",
  backwards_tabkey = "",
})

local function replace_keycodes(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.tab_binding()
  if vim.fn.pumvisible() ~= 0 then
    return replace_keycodes("<C-n")
  else
    return replace_keycodes("<Plug>(Tabout)")
  end
end

function _G.s_tab_binding()
  if vim.fn.pumvisible() ~= 0 then
    return replace_keycodes("<C-p")
  else
    return replace_keycodes("<Plug>(TaboutBack)")
  end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_binding()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_binding()", {expr = true})
EOF
