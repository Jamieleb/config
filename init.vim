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

  " Telescope dependecies
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'


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
call plug#end()

" Config
" Enable Theming support
if (has("termguicolors"))
  set termguicolors
endif
" Theme
" syntax enable 
colorscheme tender

:let  mapleader=" "

" open new split panes to right and below
set splitright
set splitbelow

let g:indentLine_char = '|'

" Floaterm custom commands
nnoremap <silent> <F7> :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F10>   :FloatermToggle<CR>
tnoremap   <silent>   <F10>   <C-\><C-n>:FloatermToggle<CR>
let g:floaterm_width = 0.9
let g:floaterm_height = 0.7
let g:floaterm_autohide = v:false

nnoremap <Leader>or :FloatermNew ranger<CR>
nnoremap <Leader>og :FloatermNew lazygit<CR>
nnoremap <Leader>oc :FloatermNew rails console<CR>

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

