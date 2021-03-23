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

  Plug 'glepnir/dashboard-nvim'

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

augroup CUSTOM
    autocmd!
    " Trim whitespace on save
    autocmd BufWritePre * %s/\s\+$//e
augroup END


