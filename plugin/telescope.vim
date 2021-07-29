lua require("custom")

nnoremap <Leader>s/ :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <Leader>sf :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader>/ :lua require('telescope.builtin').live_grep()<CR>
nnoremap <Leader><Leader> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>sR :Telescope oldfiles<CR>
nnoremap <Leader>sm :Telescope marks<CR>
nnoremap <Leader>st :Telescope colorscheme<CR>
nnoremap <Leader>sb :Telescope current_buffer_fuzzy_find<CR>
nnoremap <Leader>sg :Telescope gh pull_requests<CR>
nnoremap <Leader>sq :lua require('telescope.builtin').quickfix()<CR>
nnoremap <Leader>sl :lua require('telescope.builtin').loclist()<CR>
nnoremap <Leader>s" :lua require('telescope.builtin').registers()<CR>
nnoremap <Leader>s; :lua require('telescope.builtin').command_history()<CR>
nnoremap <Leader>ss :lua require('telescope.builtin').lsp_document_symbols()<CR>
nnoremap <Leader>sS :lua require('telescope.builtin').lsp_workspace_symbols()<CR>
nnoremap <Leader>sa :lua require('telescope.builtin').lsp_code_actions(require('telescope.themes').get_dropdown({}))<CR>
nnoremap <Leader>sk :lua require('telescope.builtin').lsp_definitions()<CR>
nnoremap <Leader>sb :lua require('telescope.builtin').buffers()<CR>
nnoremap <Leader>se :lua require('telescope.builtin').lsp_document_diagnostics()<CR>
nnoremap <Leader>sh :lua require('telescope.builtin').help_tags()<CR>
nnoremap <Leader>sc :lua require('telescope.builtin').git_bcommits()<CR>
nnoremap <Leader>sT :lua require('telescope.builtin').builtin()<CR>
nnoremap <Leader>sz :lua require('telescope.builtin').spell_suggest()<CR>

nnoremap <Leader>sw :lua require('custom.telescope').search_word()<CR>
nnoremap <Leader>s. :lua require('custom.telescope').search_dotfiles()<CR>
nnoremap <Leader>s% :lua require('telescope.builtin').reloader()<Cr>
