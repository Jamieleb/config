" Sets
set number
set relativenumber
set colorcolumn=120
set tabstop=2
set shiftwidth=2
set expandtab
set spell
set spelllang=en_gb
set nowrap
set splitright
set splitbelow
set smartindent
set shiftround
set noerrorbells
set signcolumn=yes

" Plugins
call plug#begin("~/.vim/plugged")
  " Themes
  Plug 'dracula/vim'
  Plug 'morhetz/gruvbox'
  Plug 'arcticicestudio/nord-vim'
  Plug 'jacoborus/tender.vim'
  Plug 'pgdouyon/vim-yin-yang'

  "Floating window buffers
  Plug 'voldikss/vim-floaterm'

  " Telescope dependencies
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'

  " lsp plugins
  Plug 'neovim/nvim-lspconfig'
  Plug 'kabouzeid/nvim-lspinstall'
  Plug 'nvim-lua/completion-nvim'
  Plug 'tjdevries/nlua.nvim'
  Plug 'tjdevries/lsp_extensions.nvim'

  "Auto comment
  Plug 'tpope/vim-commentary'

  " Auto Pairs
  Plug 'jiangmiao/auto-pairs'
  " Auto end in ruby
  Plug 'tpope/vim-endwise'
  " Vim-surround
  Plug 'tpope/vim-surround'
  " Visual display of registers
  Plug 'junegunn/vim-peekaboo'
  " Display lines to show indentation
  Plug 'Yggdroot/indentLine'
  " Rails Support
  Plug 'tpope/vim-rails'
  " Repeat plugin commands with .
  Plug 'tpope/vim-repeat'
  " Toggles maximising splits
  Plug 'szw/vim-maximizer'
call plug#end()

" Config
" Enable Theming support
if (has("termguicolors"))
  set termguicolors
endif

" Theme
colorscheme tender
:let  mapleader=" "
let g:indentLine_char = '|'

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

" Floaterm custom commands
let g:floaterm_width = 0.9
let g:floaterm_height = 0.7
let g:floaterm_autohide = v:false

nnoremap <silent> <Leader>to :FloatermNew<CR>
nnoremap <silent> <Leader>tn :FloatermNew<CR>
nnoremap <silent> <Leader>tt :FloatermToggle<CR>
nnoremap <silent> <Leader>tc :FloatermKill<CR>
tnoremap <silent> <C-n> <C-\><C-n>:FloatermNew<CR>
tnoremap <silent> <C-l> <C-\><C-n>:FloatermNext<CR>
tnoremap <silent> <C-h> <C-\><C-n>:FloatermPrev<CR>
tnoremap <silent> <C-j> <C-\><C-n>:FloatermToggle<CR>
tnoremap <silent> <C-k> <C-\><C-n>:FloatermKill<CR>

nnoremap <Leader>ro :FloatermNew ranger<CR>
nnoremap <Leader>go :FloatermNew lazygit<CR>
nnoremap <Leader>co :FloatermNew rails console<CR>

" Other Plugin Remaps
nnoremap <silent><Leader>wf :MaximizerToggle<CR>

" General Remaps
" map keys for changing splits.
nnoremap <Leader>wj <C-w>j
nnoremap <Leader>wk <C-w>k
nnoremap <Leader>wl <C-w>l
nnoremap <Leader>wh <C-w>h

" Other split remaps
nnoremap <Leader>wc <C-w>c
nnoremap <Leader>wv <C-w>v
nnoremap <Leader>ws <C-w>s
nnoremap <Leader>w= <C-w>=

" Cut/Copy/Paste Remaps
vnoremap <Leader>p "_dP
nnoremap <Leader>y "*y
vnoremap <Leader>y "*y
nnoremap <Leader>d "_d
vnoremap <Leader>d "_d

" Quickfix and Location List
" Open/close
nnoremap <Leader>qo :copen<CR>
nnoremap <Leader>qc :cclose<CR>
nnoremap <Leader>lo :lopen<CR>
nnoremap <Leader>lc :lclose<CR>

" Navigate
nnoremap <Leader>qj :cnext<CR>
nnoremap <Leader>qk :cprevious<CR>
nnoremap <Leader>lj :lnext<CR>
nnoremap <Leader>lk :lprevious<CR>

" Telescope remaps
nnoremap <Leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <Leader>ff :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader><Leader> :lua require('telescope.builtin').find_files()<CR>

augroup CUSTOM
    autocmd!
    " Trim whitespace on save
    autocmd BufWritePre * %s/\s\+$//e
augroup END


