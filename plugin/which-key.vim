autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" Define prefix dictionary
let g:which_key_map = {
  \'<Space>' : 'search for file',
  \'<BS>' : 'Go to last buffer',
  \'<CR>' : 'clear search highlighting',
  \'j' : 'page down',
  \'k' : 'page up',
  \'%' : 'source init.vim',
  \';' : {
    \'name' : '+commands',
    \'w' : 'write',
    \'q' : 'quit',
    \'d' : 'discard unsaved changes',
    \';' : 'command mode',
  \},
  \'.' : {
    \'name' : '+config',
    \'g' : 'open dotfiles git',
  \},
\}

" Second level dictionaries:
let g:which_key_map.b = {
  \'name' : '+buffers',
  \'b' : 'Switch Buffers',
  \'n' : 'next buffer',
  \'p' : 'previous buffer',
  \'N' : 'new buffer',
  \'k' : 'kill buffer',
  \'o' : 'kill other buffer',
  \'g' : 'Pick Buffer',
\}

let g:which_key_map.o = {
  \'name' : '+open',
  \'r' : 'ranger',
  \'t' : 'open & run relevant unit test',
\}

let g:which_key_map.f = {
  \'name' : '+file',
  \'p' : 'preview in floating buffer (.md only)',
\}

let g:which_key_map.g = {
  \'name' : 'git',
  \'g' : 'lazygit',
  \'p' : 'git pull',
  \'P' : 'git push',
  \'m' : 'checkout master',
  \'d' : 'checkout develop',
  \'c' : 'git add all and commit',
  \'.' : 'lazygit .dotfiles',
  \'h' : {
    \'name' : '+github',
    \'c' : 'checkout PR by number',
  \},
\}

let g:which_key_map.r = {
  \'name' : '+AsyncRun',
  \'r' : 'new aync command',
\}

let g:which_key_map.w = {
  \'name' : '+windows',
  \'j' : 'navigate downwards to split',
  \'k' : 'navigate upwards to split',
  \'h' : 'navigate leftwards to split',
  \'l' : 'navigate rightwards to split',
  \'c' : 'close window',
  \'v' : 'split window vertically',
  \'s' : 'split window horizontally',
  \'=' : 'balance splits',
  \'f' : {
    \'name' : '+files',
    \'s' : 'open file in horizontal split',
    \'v' : 'open file in vertical split',
  \},
  \'m' : 'toggle maximise split',
  \'p' : 'persist workspace',
  \'r' : 'restore workspace',
  \'t' : {
    \'name' : '+tabs',
    \'n' : 'open new tab',
    \'t' : 'open file in new tab',
    \'c' : 'close tab',
  \},
\}

let g:which_key_map.n = {
  \'name' : '+notes',
  \'i' : 'open wiki index',
  \'t' : 'open wiki index in new tab',
  \'s' : 'open wiki select',
  \'d' : {
    \'name' : '+diary',
    \'i' : 'open diary index',
    \'c' : 'create diary note for today',
    \'t' : 'create diary note for today in new tab',
    \'h' : 'create diary note for yesterday',
    \'l' : 'create diary note for tomorrow',
  \},
\}

let g:which_key_map.t = {
  \'name' : '+terminal',
  \'n' : 'new floating terminal',
  \'t' : 'toggle floating terminal',
  \'c' : 'close floating terminal',
  \'v' : 'new terminal in vertical split',
  \'s' : 'new terminal in horizontal split',
  \'T' : 'new terminal in new tab',
\}

let g:which_key_map.q = {
  \'name' : '+quickfix-list',
  \'o' : 'open quickfix list',
  \'c' : 'close quickfix list',
  \'j' : 'next quickfix list item',
  \'k' : 'previous quickfix list item',
\}

let g:which_key_map.Q = {
  \'name' : '+location-list',
  \'o' : 'open location list',
  \'c' : 'close location list',
  \'j' : 'next location list item',
  \'k' : 'previous location list item',
\}

let g:which_key_map.s = {
  \'name' : '+search',
  \'f' : 'search for file',
  \'/' : 'search for pattern in project',
  \'h' : 'search recently opened files',
  \'m' : 'search marks',
  \'t' : 'search for colorschemes',
  \'q' : 'search quickfix list',
  \'l' : 'search location list',
  \'"' : 'search registers',
  \';' : 'search command history',
  \'s' : 'search document symbols',
  \'S' : 'search workspace symbols',
  \'w' : 'search workspace for word under cursor',
  \'b' : 'search buffers',
  \'e' : 'search document errors',
  \'.' : 'search config files',
  \'a' : 'search code actions',
\}

let g:which_key_map.l = {
  \'name' : '+LSP',
  \'d' : 'preview definition',
  \'D' : 'jump to definition',
  \'a' : 'code actions',
  \'r' : 'rename symbol under cursor',
  \'k' : 'display hover information',
  \'e' : 'show line diagnostics',
  \'l' : 'set line diagnostics in location list',
  \'c' : 'stop currently running clients',
  \'f' : 'lsp finder',
  \'n' : 'next error',
  \'p' : 'previous error',
  \'s' : 'search document symbols',
  \'S' : 'search workplace symbols',
  \'i' : 'find implementations',
\}

" Ignored keymaps
let g:which_key_map.p = 'which_key_ignore'
let g:which_key_map.y = 'which_key_ignore'
let g:which_key_map.d = 'which_key_ignore'
let g:which_key_map.c = 'which_key_ignore'
let g:which_key_map.x = 'which_key_ignore'
let g:which_key_map.hp = 'which_key_ignore'
let g:which_key_map.h = { 'name' : 'which_key_ignore' }
let g:which_key_map.v = { 'name' : 'which_key_ignore' }
