lua require("custom")

nnoremap <Leader>s/ :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <Leader>sf :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader><Leader> :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader>sh :Telescope oldfiles<CR>
nnoremap <Leader>sm :Telescope marks<CR>
nnoremap <Leader>st :Telescope colorscheme<CR>
nnoremap <Leader>sq :lua require('telescope.builtin').quickfix()<CR>
nnoremap <Leader>sl :lua require('telescope.builtin').loclist()<CR>
nnoremap <Leader>s" :lua require('telescope.builtin').registers()<CR>
nnoremap <Leader>s: :lua require('telescope.builtin').command_history()<CR>
nnoremap <Leader>ss :lua require('telescope.builtin').lsp_document_symbols()<CR>
nnoremap <Leader>sS :lua require('telescope.builtin').lsp_workspace_symbols()<CR>
nnoremap <Leader>sw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <Leader>sb :lua require('telescope.builtin').buffers()<CR>
nnoremap <Leader>se :lua require('telescope.builtin').lsp_document_diagnostics()<CR>

nnoremap <Leader>s. :lua require('custom.telescope').search_dotfiles()<CR>
