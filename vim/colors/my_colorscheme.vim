" Name:         idk
" Description:  we'll see
" Author:       me
" Maintainer:   lmao maintain?
" Website:      www.blabalkjlakjb.se
" License:      Vim License (see `:help license`)
" Last Change:  today

hi clear
let g:colors_name = 'my_colorscheme'

let s:t_Co = has('gui_running') ? -1 : (&t_Co ?? 0)

" want most things to use the color of the terminal
" currently set to bg:181818 fg:c0c0c0
hi! link Identifier Normal
hi! link Type Normal
hi! link Constant Normal
hi! link LineNr Normal
hi! link Operator Normal
hi! link Special Normal
hi! link EndOfBuffer Normal
hi! link Type Normal

hi! link CursorLineNr CursorLine
hi! link PreProc Comment
hi! link Search Visual

if &background ==# 'dark'
    hi CursorLine guibg=#303030 cterm=NONE
    hi Statement guifg=#d06060
    hi String guifg=#7ac47a
    hi Comment guifg=#808080
    " NOTE: hard coded inverse of terminal colors. Is there a better way to do this?
    hi Todo guibg=#c0c0c0 guifg=#181818
else
    " TODO: not implemented
endif
