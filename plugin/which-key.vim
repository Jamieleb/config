autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" Define prefix dictionary
let g:which_key_map =  {}

" Second level dictionaries:
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
  \'w' : 'save workspace',
  \'r' : 'restore workspace',
  \'t' : {
    \'name' : '+tabs',
    \'n' : 'open new tab',
    \'t' : 'open file in new tab',
    \'c' : 'close tab',
  \},
\}

let g:which_key_map.b = {
  \'name' : '+buffers',
  \'n' : 'new buffer',
  \'k' : 'kill buffer',
  \'o' : 'kill other buffer',
\}

let g:which_key_map.vrc = 'source init.vim'

let g:which_key_map.t = {
  \'name' : '+terminal',
  \'o' : 'new floating terminal',
  \'t' : 'toggle floating terminal',
  \'c' : 'close floating terminal',
\}

let g:which_key_map.ro = 'open file explorer'
let g:which_key_map.go = 'open lazygit'

let g:which_key_map.q = {
  \'name' : '+quickfix-list',
  \'o' : 'open quickfix list',
  \'c' : 'close quickfix list',
  \'j' : 'next quickfix list item',
  \'k' : 'previous quickfix list item',
\}

let g:which_key_map.l = {
  \'name' : '+location-list',
  \'o' : 'open location list',
  \'c' : 'close location list',
  \'j' : 'next location list item',
  \'k' : 'previous location list item',
\}

let g:which_key_map.h = 'show dashboard'

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
  \':' : 'search command history',
  \'s' : 'search document symbols',
  \'S' : 'search workspace symbols',
  \'w' : 'search workspace for word under cursor',
  \'b' : 'search buffers',
  \'e' : 'search document errors',
  \'.' : 'search config files',
\}

let g:which_key_map.k = 'display hover indentation'

let g:which_key_map.a = {
  \'name' : '+code-actions',
  \'d' : 'jump to definition',
  \'r' : 'rename symbol under cursor',
  \'k' : 'display hover information',
  \'e' : 'show line diagnostics',
  \'l' : 'set line diagnostics in location list',
\}

let g:which_key_map.n = 'clear search highlighting'

" Ignored keymaps
let g:which_key_map.p = 'which_key_ignore'
let g:which_key_map.y = 'which_key_ignore'
let g:which_key_map.d = 'which_key_ignore'
let g:which_key_map.c = 'which_key_ignore'
let g:which_key_map.x = 'which_key_ignore'
let g:which_key_map.hp = 'which_key_ignore'
let g:which_key_map.h = { 'name' : 'which_key_ignore' }
let g:which_key_map.v = { 'name' : 'which_key_ignore' }
let g:which_key_map.g = { 'name' : 'which_key_ignore' }
let g:which_key_map.r = { 'name' : 'which_key_ignore' }