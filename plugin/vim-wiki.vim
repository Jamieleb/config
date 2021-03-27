" Unmap default bindings
let g:vimwiki_key_mappings = { 'all_maps': 0, }

nmap <Leader>ni <Plug>VimwikiIndex
nmap <Leader>nt <Plug>VimwikiTabIndex
nmap <Leader>ns <Plug>VimwikiUISelect
nmap <Leader>ndi <Plug>VimwikiDiaryIndex
nmap <Leader>ndc <Plug>VimwikiMakeDiaryNote
nmap <Leader>ndt <Plug>VimwikiTabMakeDiaryNote
nmap <Leader>ndh <Plug>VimwikiMakeYesterdayDiaryNote
nmap <Leader>ndl <Plug>VimwikMakeTomorrowDiaryNote

augroup filetype_vimwiki
  autocmd!
  autocmd FileType vimwiki nmap <localleader>nhc <Plug>Vimwiki2HTML
  autocmd FileType vimwiki nmap <localleader>nhb <Plug>Vimwiki2HTMLBrowse
  autocmd FileType vimwiki nmap <localleader>ndu <Plug>VimWikiDiaryGenerateLinks
  autocmd FileType vimwiki nmap <CR> <Plug>VimwikiFollowLink
  autocmd FileType vimwiki nmap <CR> <Plug>VimwikiSplitLink
  autocmd FileType vimwiki nmap <localleader><CR> <Plug>VimwikiSplitLink
  autocmd FileType vimwiki nmap <localleader>v<CR> <Plug>VimwikiVSplitLink
  autocmd FileType vimwiki nmap <localleader>t<CR> <Plug>VimwikiTabnewLink
  autocmd FileType vimwiki nmap <Backspace> <Plug>VimwikiGoBackLink
  autocmd FileType vimwiki nmap <Tab> <Plug>VimwikiNextLink
  autocmd FileType vimwiki nmap <S-Tab> <Plug>VimwikiPrevLink
  autocmd FileType vimwiki nmap <localleader>nn <Plug>VimwikiGoto
  autocmd FileType vimwiki nmap <localleader>nd <Plug>VimwikiDeleteFile
  autocmd FileType vimwiki nmap <localleader>nr <Plug>VimwikiRenameFile
  autocmd FileType vimwiki nmap <localleader><Space> <Plug>VimwikiToggleListItem
  autocmd FileType vimwiki nmap <localleader><Space> <Plug>VimwikiToggleListItem
augroup END
