" Quickfix and Location List
" Open/close
noremap <silent><Leader>qq :TroubleToggle<CR>
nnoremap <Leader>qo :Trouble quickfix<CR>
nnoremap <Leader>qc :cclose<CR>
nnoremap <Leader>Qo :Trouble loclist<CR>
nnoremap <Leader>Qc :lclose<CR>
nnoremap <Leader>QQ :TroubleToggle loclist<CR>

" Navigate lists
nnoremap <Leader>qn :lua require'trouble'.next({skip_groups = true, jump = true})<CR>zz
nnoremap <Leader>qp :lua require'trouble'.previous({skip_groups = true, jump = true})<CR>zz

" Vertical Navigation
nnoremap <Leader>j <C-f>
nnoremap <Leader>k <C-b>

nnoremap <Leader>or :RnvimrToggle<CR>

lua << EOF
require'lightspeed'.setup {
  jump_to_first_match = true,
  highlight_unique_chars = true,
  grey_out_search_area = true,
}
EOF