lua require("custom")

nnoremap <Leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader><Leader> :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader>ph :Telescope oldfiles<CR>
nnoremap <Leader>pm :Telescope marks<CR>
nnoremap <Leader>pl :Telescope livegrep<CR>
nnoremap <Leader>pt :Telescope colorscheme<CR>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>p. :lua require('custom.telescope').search_dotfiles()<CR>