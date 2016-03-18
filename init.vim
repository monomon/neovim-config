" init.vim file
" Created by Tenn1518

" Pathogen startup
execute pathogen#infect()

" Set
set incsearch
set nocp
set number

" Set <leader> and <localleader>
let mapleader = "'"
let maplocalleader = "["

" Toggle relativenumber
nnoremap <leader>r :set relativenumber!<cr>

" Edit init.vim
nnoremap <leader>v :vsplit $MYVIMRC<cr>
nnoremap <leader>s :source $MYVIMRC<cr>

" Strong H/L
nnoremap H 0
nnoremap L $

" Switch to normal mode
inoremap jk <ESC>
inoremap <ESC> <NOP>

" Make yanking an entire line much easier
nnoremap Y 0y$

" Cut function
nnoremap yd 0y$dd

" Comment function
augroup comment
	autocmd!
	autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
	autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
	autocmd BufWritePre,BufRead *.vim nnoremap <buffer> <localleader>c I"<esc>
augroup END

" Default file explorer to VimFiler
let g:vimfiler_as_default_explorer = 1

" Vim Solarized theme 
syntax enable
set background=dark
colorscheme solarized
