call plug#begin()

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
" Plug 'dracula/vim'
Plug 'morhetz/gruvbox'

call plug#end()

color gruvbox
set termguicolors

set number
set ruler

syntax on

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

set wildmenu
set hidden
set shortmess-=S

set wildignore=*.exe,*.dll,*.pdb

set guifont=mononoki:h25

set guioptions-=m
set guioptions-=T
set guioptions-=r

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_ti .= "\e[2 q"
let &t_te .= "\e[6 q"

set backspace=indent,eol,start


set cursorline

function! s:on_lsp_buffer_enabled() abort
	    setlocal omnifunc=lsp#complete
endfunction

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END


