set number

set shiftwidth=4
set tabstop=4

set cursorline

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
" set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
syntax on

let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf='open'
let g:Tex_MultipleCompileFormats='dvi,pdf'

let Tex_FoldedSections=""
let Tex_FoldedEnvironments=""
let Tex_FoldedMisc=""

imap <F4> <esc>
map <F4> :w <CR><leader>ll <leader> lv

command Fname echo @%

map <F6> :w!<CR>:!aspell check %<CR>:e! %<CR>
"colorscheme desert
"colorscheme deus
colorscheme apprentice
" use the option below for active spellcheck
"set spell spelllang=en_us

if &diff
    colorscheme apprentice
endif
