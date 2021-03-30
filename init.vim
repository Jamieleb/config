call plug#begin("~/.vim/plugged")
  " Themes
  Plug 'dracula/vim'
  Plug 'morhetz/gruvbox'
  Plug 'arcticicestudio/nord-vim'
  Plug 'jacoborus/tender.vim'
  Plug 'pgdouyon/vim-yin-yang'
  Plug 'ayu-theme/ayu-vim'
  Plug 'colepeters/spacemacs-theme.vim'
  Plug 'altercation/vim-colors-solarized'
  Plug 'windwp/wind-colors'
  Plug 'tanvirtin/monokai.nvim'
  Plug 'ackyshake/Spacegray.vim'
  Plug 'zabanaa/neuromancer.vim'
  Plug 'bluz71/vim-nightfly-guicolors'
  Plug 'mhartington/oceanic-next'
  Plug 'bluz71/vim-moonfly-colors'
  Plug 'glepnir/zephyr-nvim'
  Plug 'yonlu/omni.vim'

  " Status Line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Tab bar
  Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
  " Plug 'ryanoasis/vim-devicons' " Icons without colours
  Plug 'akinsho/nvim-bufferline.lua'

  "Floating window buffers
  Plug 'voldikss/vim-floaterm'
  Plug 'kassio/neoterm'

  " Telescope dependencies
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'

  " LSP, Linting, and Completion plugins
  Plug 'neovim/nvim-lspconfig'
  Plug 'kabouzeid/nvim-lspinstall'
  Plug 'nvim-lua/completion-nvim'
  Plug 'steelsojka/completion-buffers'
  Plug 'tjdevries/nlua.nvim'
  Plug 'tjdevries/lsp_extensions.nvim'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  Plug 'glepnir/dashboard-nvim'
  Plug 'liuchengxu/vim-which-key'

  " Async tasks
  Plug 'skywind3000/asyncrun.vim'

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
  " Git Client
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'pwntester/octo.nvim'
  " Toggles maximising splits
  Plug 'szw/vim-maximizer'
  Plug 'vimwiki/vimwiki'
  " Markdown previewer
  Plug 'npxbr/glow.nvim', {'do': ':GlowInstall'}
  " Show colours in buffer
  Plug 'norcalli/nvim-colorizer.lua'
call plug#end()

" Config
" Enable Theming support
if (has("termguicolors"))
  set termguicolors
endif

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }
lua require'colorizer'.setup()

" Theme
set background=dark
colorscheme wind
let g:airline_powerline_fonts = 1
let g:airline_theme='ayu'
let g:airline_solarized_bg='dark'

let  mapleader=" "
let maplocalleader="\\"
call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

let g:indentLine_char = '|'

augroup CUSTOM
    autocmd!
    " Trim whitespace on save
    autocmd BufWritePre * %s/\s\+$//e
augroup END
