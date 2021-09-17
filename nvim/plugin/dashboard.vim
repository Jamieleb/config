let g:dashboard_preview_file_height = 12
let g:dashboard_preview_file_width = 80
let g:dashboard_default_executive ='telescope'

let g:dashboard_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\]

let g:indentLine_fileTypeExclude = ['dashboard']
autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2

let g:dashboard_custom_shortcut={
\ 'last_session'       : 'not used',
\ 'find_history'       : 'SPC s h',
\ 'find_file'          : 'SPC s f',
\ 'new_file'           : 'SPC b n',
\ 'change_colorscheme' : 'SPC s t',
\ 'find_word'          : 'SPC s /',
\ 'book_marks'         : 'SPC s m',
\ }
