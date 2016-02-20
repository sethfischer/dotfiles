set number
set mouse=a
set clipboard=unnamed
set nobackup
set noswapfile
set laststatus=2
set nowrap
set expandtab
set autoindent
set smartindent
set incsearch
set hlsearch
set nocompatible
set history=10000
set ffs=unix,dos,mac
set viminfo+=!
set background=light
set ruler
set cmdheight=1
set shortmess=atI
set report=0
set noerrorbells
filetype on
filetype plugin on
syntax on
set spell spelllang=en_gb

hi ColorColumn ctermbg=lightgrey guibg=lightgrey

" Remove trailing whitespace before write.
function! StripTrailingWhitespace()
    normal mZ
    %s/\s\+$//e
    if line("'Z") != line(".")
        echo "Stripped whitespace\n"
    endif
    normal `Z
endfunction

autocmd BufWritePre *.module,*.install,*.inc,*.php :call StripTrailingWhitespace()

" Highlight redundant whitespaces and tabs.
:highlight RedundantSpaces ctermbg=red guibg=red
:match RedundantSpaces /\s\+$\| \+\ze\t\|\t/

" Highlight long comment lines.
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
:match OverLength '\(^\(\s\)\{-}\(*\|//\|/\*\)\{1}\(.\)*\(\%81v\)\)\@<=\(.\)\{1,}$'


" Format status line.
function! CurDir()
    let curdir = substitute(getcwd(), '/home/'.$USER.'/', "~/", "g")
    return curdir
endfunction

set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L\ Column:\%c


" PHP/Drupal

" Syntax highlighting inside php sql queries.
let php_sql_query = 1

" Tab and shiftwidth according to Drupal coding standard.
set tabstop=2 shiftwidth=2

" Give other files php syntax highlighting.
autocmd BufRead .inc,.module,.install,.test set ft=php


" GnuPG Extensions

let g:GPGPreferArmor=1
let g:GPGPreferSign=1

augroup GnuPGExtra
    autocmd BufReadCmd,FileReadCmd *.\(gpg\|asc\|pgp\) call SetGPGOptions()
    autocmd CursorHold *.\(gpg\|asc\|pgp\) quit
augroup END

function SetGPGOptions()
    set updatetime=60000
    set foldmethod=marker
    set foldclose=all
    set foldopen=insert
endfunction
