 
" To Open zo, To close zc
" Empty ------------- {{{
" }}}

" General ------------- {{{
set nocompatible " be improved
filetype plugin indent on "enable file detection and plugins
syntax on " enable syntax hightlighting
set encoding=utf-8 " set default encoding to utf-8
set tabstop=4  " how many space to display tab
set shiftwidth=4 " how many space every level of indentation 
set expandtab " convert tab to space 
set autoindent " preserve indentation 
set smartindent " smart indentation for languages 
set number " show line numbers 
"set relativenumber " set relative number 
set mouse=a " enable mouse support 
set hlsearch " highligt all search patterns 
set incsearch " enable incremental search 
set hidden " navigate to another buffer without saving current buffer 
set fdm=indent " set fold method to indent 
set foldlevelstart=99 " fold level when open a file (make all fold open) 
set ignorecase " case insensitive search by default 
set smartcase " case sensitive search when using uppercase characters 
set cursorline " highlight current line
set dictionary+=/usr/share/dict/words " setup dictionary file
set colorcolumn=120 " display color margin (80 chars)
set splitbelow splitright " set default position for where a split open
" }}}


" Keybindings ------------------ {{{
" leader keys
let mapleader=" "
let maplocalleader="\\"
"
" faster way to ESC from insert mode
imap kj <ESC>

" open config file in a newtab
nnoremap <leader>ev :tabedit $MYVIMRC<CR>

" reload config file
nnoremap <leader>sv :source $MYVIMRC<CR>

" clear search highlight
nnoremap <silent> <leader>a :<C-u>nohlsearch<CR><C-l>

" navigate between buffers
nnoremap <leader>j :bprevious<CR>
nnoremap <leader>k :bnext<CR>
nnoremap <leader>h :bfirst<CR>
nnoremap <leader>l :blast<CR>

" Show all buffer and let user choose one
nnoremap <leader>i :ls<CR>:b<Space>

" Delete current buffer
nnoremap <leader>dd :bd<CR>

" Close current Window
nnoremap <leader>c :q<CR>

" Write current buffer
nnoremap <leader>w :w<CR>

" Close without saving
nnoremap <leader>e :q!<CR>

" Navigate between tabs
nnoremap <leader>1 gt1
nnoremap <leader>2 gt2
nnoremap <leader>3 gt3
nnoremap <leader>4 gt4

" Toggle hightlight current line 
nnoremap <leader>ar :setlocal cursorline!<CR>

" Toggle hightlight current column
nnoremap <leader>ac :setlocal cursorcolumn!<CR>

" Switch between to buffer 
nnoremap <leader><tab> <C-^>

" Add curent line to x keyboard
nnoremap <leader>yy :normal "+yy<CR>

" Add current selected text to X Clipboard
xnoremap <leader>yy :normal gv"+y<CR>


" Jump up 4 line in normal mode
nnoremap <silent> <C-k> :normal 4k<CR>
" Jump down 4 line in normal mode
nnoremap <silent> <C-j> :normal 4j<CR>
" Jump up 4 line in visual mode
xnoremap <silent> <C-k> :normal gv4k<CR>
" Jump down 4 line in visual mode
xnoremap <silent> <C-k> :normal gv4k<CR>



" }}}




" Plugin
call plug#begin('/home/ananda/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
call plug#end()

" setup colorscheme
set termguicolors
colorscheme base16-tomorrow-night



" Setup airline
set noshowmode " Hidden mode status
let g:airline_theme = 'base16_tomorrow'

augroup exe_code
    autocmd!
    
    " Execute python code
    autocmd! FileType python nnoremap <buffer> <localleader>r
                \ :sp<CR> :term python3 %<CR> :startinsert<CR>
    autocmd! FileType bash,sh nnoremap <buffer> <localleader>r
                \ :sp<CR> :term bash %<CR> :startinsert<CR>

augroup END


augroup congif_setting
    autocmd!
    autocmd FileType vim setlocal foldlevel=0 foldmethod=marker
augroup END
