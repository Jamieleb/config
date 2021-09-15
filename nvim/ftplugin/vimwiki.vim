setlocal spell spelllang=en_gb
setlocal linebreak
setlocal wrap
setlocal colorcolumn=0

nmap <localleader>nhc <Plug>Vimwiki2HTML
nmap <localleader>nhb <Plug>Vimwiki2HTMLBrowse
nmap <localleader>ndu <Plug>VimWikiDiaryGenerateLinks
nmap <CR> <Plug>VimwikiFollowLink
nmap <CR> <Plug>VimwikiSplitLink
nmap <localleader><CR> <Plug>VimwikiSplitLink
nmap <localleader>v<CR> <Plug>VimwikiVSplitLink
nmap <localleader>t<CR> <Plug>VimwikiTabnewLink
nmap <Backspace> <Plug>VimwikiGoBackLink
nmap <Tab> <Plug>VimwikiNextLink
nmap <S-Tab> <Plug>VimwikiPrevLink
nmap <localleader>nn <Plug>VimwikiGoto
nmap <localleader>nd <Plug>VimwikiDeleteFile
nmap <localleader>nr <Plug>VimwikiRenameFile
nmap <localleader><Space> <Plug>VimwikiToggleListItem
nmap <localleader><Space> <Plug>VimwikiToggleListItem
