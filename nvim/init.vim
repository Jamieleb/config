call plug#begin("~/.vim/plugged")
" Themes
Plug 'glepnir/zephyr-nvim'
Plug 'Th3Whit3Wolf/one-nvim'
Plug 'folke/tokyonight.nvim'

" Status Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Floating window buffers and Terminals
Plug 'akinsho/toggleterm.nvim'

" Git Clients
Plug 'kdheepak/lazygit.nvim'
Plug 'TimUntersberger/neogit'
Plug 'lewis6991/gitsigns.nvim'
Plug 'pwntester/octo.nvim'
Plug 'sindrets/diffview.nvim'

" Tab line
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" Telescope dependencies
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-github.nvim'

" LSP, Linting, and Completion plugins
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'ray-x/lsp_signature.nvim'
" Plug 'glepnir/lspsaga.nvim' - not currently maintained
Plug 'tami5/lspsaga.nvim'
Plug 'filipdutescu/renamer.nvim'
Plug 'folke/trouble.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'github/copilot.vim'

Plug 'onsails/lspkind-nvim'

Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'mhartington/formatter.nvim'

" UI Plugins
Plug 'glepnir/dashboard-nvim'
Plug 'folke/which-key.nvim'

" Async tasks
Plug 'skywind3000/asyncrun.vim'
"Auto comment
Plug 'tpope/vim-commentary'
" Auto Pairs
Plug 'jiangmiao/auto-pairs'
" Vim-surround
Plug 'tpope/vim-surround'
" Auto tags
Plug 'windwp/nvim-ts-autotag'
" Display lines to show indentation
" Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'
" Rails Support
Plug 'tpope/vim-rails'
" Language Specific Tools
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'simrat39/rust-tools.nvim'
" Repeat plugin commands with .
Plug 'tpope/vim-repeat'
" Toggles maximising splits
Plug 'szw/vim-maximizer'
" Show colours in buffer
Plug 'norcalli/nvim-colorizer.lua'
" Navigation Plugins
Plug 'ggandor/lightspeed.nvim'
" Buffer navigation
Plug 'kevinhwang91/rnvimr'
" File Tree
Plug 'kyazdani42/nvim-tree.lua'
" NVIM in the browser
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
" Improved increment/decrement
Plug 'monaqa/dial.nvim'
" Do the opposite of J
Plug 'kana/vim-textobj-user'
Plug 'sgur/vim-textobj-parameter'
Plug 'AckslD/nvim-revJ.lua'
" scratch buffers
Plug 'mtth/scratch.vim'
" swap args
Plug 'mizlan/iswap.nvim'
" Project specific consig
Plug 'windwp/nvim-projectconfig'
" See where cursor jumps to
Plug 'edluffy/specs.nvim'
" Todo comment highlighting
Plug 'folke/todo-comments.nvim'
" Improved Marks
Plug 'ThePrimeagen/harpoon'
" Neorg
Plug 'nvim-neorg/neorg'
" zen mode
Plug 'folke/zen-mode.nvim'
call plug#end()

" Config
" Enable Theming support
if (has("termguicolors"))
  set termguicolors
endif

let mapleader=" "
let maplocalleader="\\"

lua <<EOF
local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

parser_configs.norg_meta = {
  install_info = {
    url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
    files = { "src/parser.c" },
    branch = "main"
  },
}

parser_configs.norg_table = {
  install_info = {
    url = "https://github.com/nvim-neorg/tree-sitter-norg-table",
    files = { "src/parser.c" },
    branch = "main"
  },
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'norg', 'norg_meta', 'norg_table', 'markdown', 'javascript', 'typescript', 'ruby', 'rust' },
  highlight = {
  enable = true,
  additional_vim_regex_highlighting = false,
  },
    incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
      },
    },
  indent = {
  enable = true
  }
}
EOF

"Plugins
lua << EOF
require('trouble').setup()
require('nvim-ts-autotag').setup()
require('which-key').setup({
  plugins = {
    spelling = { enabled = true },
  },
  key_labels = {
    ["<space>"] = "SPC",
    ["<CR>"] = "RET",
    ["<tab>"] = "TAB",
  }
})
EOF

imap <silent><script><expr> <Right> copilot#Accept("")
let g:copilot_no_tab_map = v:true

" Theme
set background=dark
colorscheme tokyonight
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='atomic'
let g:airline_solarized_bg='dark'

let g:scratch_persistence_file = "~/notes/.scratch.vim"
let g:scratch_no_mappings = 1

augroup CUSTOM
  autocmd!
  " Trim whitespace on save
  autocmd BufWritePre * %s/\s\+$//e
augroup END
