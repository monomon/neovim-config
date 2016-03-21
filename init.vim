"""""""""""""""""""""""
" init.vim file       "
" Created by Tenn1518 "
"""""""""""""""""""""""

" Pathogen startup
execute pathogen#infect()

" Set
set incsearch
set nocp
set number
set cursorline
set so=2

" Enable syntax highlighting
syntax enable

" Set <leader> and <localleader>
let mapleader = "'"
let maplocalleader = "["

" Toggle relativenumber
nnoremap <leader>r :set relativenumber!<cr>

" Edit init.vim
nnoremap <leader>v :vsplit $MYVIMRC<cr>
nnoremap <leader>s :source $MYVIMRC<cr>

" Move around easier in insert mode
inoremap <c-h> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>

" Strong H/L
nnoremap H 0
nnoremap L $

" Switch to normal mode
inoremap jk <ESC>
inoremap <ESC> <NOP>

" Make yanking an entire line much easier
nnoremap yl 0y$

" Cut function
nnoremap yd 0y$dd

filetype on

" Automatic commands
augroup comment
	autocmd!
	autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
	autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
	autocmd BufNewFile,BufRead *.vim nnoremap <buffer> <localleader>c I"<esc>
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
augroup END

" Default file explorer to VimFiler
let g:vimfiler_as_default_explorer = 1

" Vim Solarized theme
" Uncomment the following lines if you wish not to use the solarized
" colorscheme
set background=dark
colorscheme solarized

" Powerline symbols for vim-airline
let g:airline_powerline_fonts = 1

" Set vim-airline theme
" Comment the following line if you wish not to use the solarized
" colorscheme
let g:airline_theme="solarized"

" Default vim-airline theme
" Uncomment the following line if you wish to use the default vim-airline
" theme
" let g:airline_theme="dark"

" Visual mode pressing * or # searches for the current selection
function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("Ag \"" . l:pattern . "\" " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

" Treat wrapped lines as individual when moving vertically
nnoremap j gj
nnoremap k gk

" Map <Space> to search and Ctrl+<Space> to search backwards
nnoremap <space> /
nnoremap <c-space> ?

" Disable search highlight when <Leader>+<Space> is pressed
nnoremap <silent> <leader><space> :noh<cr>

" Move between windows in normal mode
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Close buffer
nnoremap <leader>bd :Bclose<cr>:tabclose<cr>gT

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext
