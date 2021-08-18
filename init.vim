call plug#begin("~/.vim/plugged")
  " Themes
  Plug 'glepnir/zephyr-nvim'
  Plug 'Th3Whit3Wolf/one-nvim'
  Plug 'folke/tokyonight.nvim'

  " Status Line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  "Floating window buffers and Terminals
  Plug 'voldikss/vim-floaterm'
  Plug 'kassio/neoterm'

  " Git Clients
  Plug 'kdheepak/lazygit.nvim'
  Plug 'TimUntersberger/neogit'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'pwntester/octo.nvim'

  " Tab line
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'romgrk/barbar.nvim'

  " Telescope dependencies
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'
  Plug 'nvim-telescope/telescope-github.nvim'

  " LSP, Linting, and Completion plugins
  Plug 'neovim/nvim-lspconfig'
  Plug 'kabouzeid/nvim-lspinstall'
  Plug 'nvim-lua/completion-nvim'
  Plug 'steelsojka/completion-buffers'
  Plug 'ray-x/lsp_signature.nvim'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'folke/trouble.nvim'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'lewis6991/spellsitter.nvim'

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
  " Toggles maximising splits
  Plug 'szw/vim-maximizer'
  " Markdown previewer
  " Plug 'npxbr/glow.nvim', {'do': ':GlowInstall'}
  " Show colours in buffer
  Plug 'norcalli/nvim-colorizer.lua'
  " Navigation Plugins
  Plug 'justinmk/vim-sneak'
  " Buffer navigation
  Plug 'matbme/JABS.nvim'
  Plug 'kevinhwang91/rnvimr'
  " NVIM in the browser
  Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
  " Smooth Scrolling
  Plug 'karb94/neoscroll.nvim'
call plug#end()

" Config
" Enable Theming support
if (has("termguicolors"))
  set termguicolors
endif

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }
lua require'colorizer'.setup()
lua require'spellsitter'.setup()
lua require'trouble'.setup()
lua require'neogit'.setup()
lua require'neoscroll'.setup()

" Theme
set background=dark
colorscheme tokyonight
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='atomic'
let g:airline_solarized_bg='dark'

let mapleader=" "
let maplocalleader=" m"
call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

let g:indentLine_char = '|'

augroup CUSTOM
  autocmd!
  " Trim whitespace on save
  autocmd BufWritePre * %s/\s\+$//e
augroup END
