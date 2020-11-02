call plug#begin("~/.vim/plugged")
  " Plugin Section
  " Theme
  Plug 'dracula/vim'
  Plug 'morhetz/gruvbox'
  Plug 'arcticicestudio/nord-vim' 
  Plug 'jacoborus/tender.vim'
  Plug 'pgdouyon/vim-yin-yang'

  " File Explorer with icons
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'

  " File search
  Plug 'junegunn/fzf', { 'dir': '~/fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  " Text Finder
  Plug 'dyng/ctrlsf.vim'

  " Language Client
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-solargraph']
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'zsh install.sh',
    \}
  Plug 'HerringtonDarkholme/yats'

  " Floating window buffers
  Plug 'voldikss/vim-floaterm'

  " Linting
  Plug 'dense-analysis/ale'

  " Git functionality
  Plug 'tpope/vim-fugitive'
  " Auto comment
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
  " Distraction-free vim-ing
  Plug 'junegunn/goyo.vim'
  " block highlighting
  Plug 'junegunn/limelight.vim'

call plug#end()

" Config Section
" Enable Theming support
if (has("termguicolors"))
  set termguicolors
endif
" Theme
syntax enable 
colorscheme tender

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automatically close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
" nnoremap <silent> <C-b> :NERDTreeToggle %<CR>

" open  new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode 
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" use alt+hjjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w><C-h>
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <cr> <c-w>w

" use ctrl-P for FZF
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" Mappings for CtrlSF
nmap <F4> <Plug>CtrlSFPrompt
" vmap <C-F>f <Plug>CtrlSFVwordPath

" Solargraph settings
" Tell the language client to use the defaul IP and port that Solargraph runs
" on
let g:LanguageClient_serverCommands = {
  \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio']
  \}

" Don't send a stop signal to the server whe exiting vim
let g:LanguageClient_autoStop = 0

" Configure ruby omni-completion to use the language client
autocmd FileType ruby setlocal omnifunc=LanguageClient#complete

" Configure autocomplete to confirm completion on CR and Tab
" https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nmap <F5> <Plug>(lcn-menu)
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gD :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" ignore node_modules and .gitignore specified files by using
" silversearcher-ag

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Map search highlighting toggle to <F3>
set hlsearch!
nnoremap <F3> :set hlsearch!<CR>

" Goyo Limelight integration
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

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

command! Vifm FloatermNew vifm
command! Lg FloatermNew lazygit
command! Ranger FloatermNew ranger

set number
set relativenumber

set colorcolumn=120
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set spell
set spelllang=en_gb

