" Console
nnoremap <localleader>cf :FloatermNew rails c<CR>
nnoremap <localleader>cs :sp term://rails c<CR>
nnoremap <localleader>cv :vsp term://rails c<CR>
nnoremap <localleader>C :terminal rails c<CR>

lua << EOF
  local Terminal = require('toggleterm.terminal').Terminal
  function console(direction, size)
    Terminal:new({ cmd = "rails console", hidden = true, direction = direction, size = size })
  end


EOF

" Server
nnoremap <localleader>S :terminal rails s<CR>

" RSpec
nnoremap <localleader>rt :AsyncRun bundle exec rspec %<CR>
nnoremap <localleader>ot :FloatermNew bundle exec rspec %<CR>

" Search functionality
nnoremap <localleader>sm :lua require('custom.telescope').search_rails_models()<CR>
nnoremap <localleader>sc :lua require('custom.telescope').search_rails_controllers()<CR>
nnoremap <localleader>sr :lua require('custom.telescope').search_rails_components()<CR>
nnoremap <localleader>sv :lua require('custom.telescope').search_rails_views()<CR>

" vim-rails
nnoremap <silent><localleader>R :R<CR>
nnoremap <silent><localleader>A :A<CR>
