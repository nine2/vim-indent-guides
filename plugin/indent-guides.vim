" Vim plugin to change the working directory to the project root.
"
" Copyright 2018-2018 bbxytl, <bbxytl@gmail.com>
" Released under the MIT licence.

if exists('g:loaded_nine2_indent_guides') || &cp
  finish
endif
let g:loaded_nine2_indent_guides = 1


" tab键特殊显示
" set list
" set lcs=tab:\|\ ,nbsp:%
fun! Nine2IndentGuides()
    if !exists("g:nine2_indent_guides_enable")
        let g:nine2_indent_guides_enable = 0
    endif
    if !exists("g:nine2_indent_guides_disable")
        let g:nine2_indent_guides_disable = 0
    endif

    if g:nine2_indent_guides_disable is 0
      if g:nine2_indent_guides_enable is 0
          let g:nine2_indent_guides_enable = 1
      else
          let g:nine2_indent_guides_enable = 0
      endif

      if g:nine2_indent_guides_enable is 0
          set nolist
      else
          set list
          set lcs=tab:\|\ ,nbsp:%
      endif
    else
        set nolist
    endif
endfun
" map <leader>i :call Nine2IndentGuides()<cr>
au VimEnter * call Nine2IndentGuides()


""""""""""""""""""""""""""
" Shortcuts...
""""""""""""""""""""""""""
" command! -nargs=0 Nine2IndentGuides :call Nine2IndentGuides()
command! Nine2IndentGuides :call Nine2IndentGuides()

" vim:set ft=vim sw=2 sts=2  fdm=marker et:
