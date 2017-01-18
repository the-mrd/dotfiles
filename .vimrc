set nocompatible

" Make backspace behave in a sane manner
set backspace=indent,eol,start

" Enable wrapping, but only linebreak when explicitly pressing Enter
set wrap
set linebreak
set nolist	" list disables linebreak
set textwidth=0 wrapmargin=0

" colorscheme desert
 "colorscheme darkblue
" colorscheme morning
" colorscheme shine
" colorscheme evening

syntax on

" Enable filetype detection and do language-dependent indenting
filetype plugin indent on

" Show line number
set number

" Allow hidden buffers, don't limit to 1b file per window/split
set hidden
