" Console
nnoremap <localleader>cf :FloatermNew rails c<CR>
nnoremap <localleader>cs :sp | terminal rails c<CR>
nnoremap <localleader>cv :vsp | terminal rails c<CR>
nnoremap <localleader>ct :terminal rails c<CR>

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
