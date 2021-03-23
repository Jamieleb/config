" LSP & Completion
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require('lspconfig').solargraph.setup{ on_attach=require'completion'.on_attach }
lua require('lspconfig').tsserver.setup{ on_attach=require'completion'.on_attach }

nnoremap <leader>cd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>qr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>cr :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>k :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>ce :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <leader>cl :lua vim.lsp.diagnostic.set_loclist()<CR>
