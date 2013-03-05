" vim, not vi
set nocompatible

" Use utf-8 as standard
:set encoding=utf-8

" set backup dirs
set backupdir=~/.backup//
set directory=~/.backup//

" show cursor position in lower right corner, line number, and commands
set ruler
set number
set showcmd

execute pathogen#infect()

syntax on

let mapleader = ","

" --- EasyMotion
"  "let g:EasyMotion_leader_key = '<Leader>m' " default is <Leader>w
"  hi link EasyMotionTarget ErrorMsg
"  hi link EasyMotionShade  Comment

" Tabs width
set shiftwidth=2
set tabstop=2
" Insert spaces and not tabs
set expandtab
" Auto and smart indent and tabbing
set autoindent
set smartindent    " auto/smart indent
set smarttab                  " tab and backspace are smart
set pastetoggle=<F2>
" ???
set backspace=indent,eol,start
set linebreak

" set folding to indent
set fdm=indent
set foldlevel=50

" incremental search
set incsearch

" Don't highlight matching brackets
let g:loaded_matchparen= 1 

" recording
map Q @q

" Disable any kind of bell
set t_vb=
set noerrorbells
set novisualbell

" Easier escape and save
imap :w <Esc>:w

" Y yanks from cursor until end of line
noremap Y y$

" <CR> enters an empty line above this one
map <CR> O<Esc>j

" Space inserts a space even in normal mode
map <Space> i<Space><Esc>l

" make cursor move as expected with wrapped lines
inoremap <Down> <c-o>gj
inoremap <Up> <c-o>gk
noremap j gj
noremap k gk

set scrolloff=10 " Keep 20 lines above or below cursor if possible

" move cursor to end of line with "+"
map + $

"  searching
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
" toggle search highlighting with F4
nmap <F4> :set hls!<CR>

" Tabbing
map <C-u> :tabp<CR>
map <C-i> :tabn<CR>
map ,t :tabnew<CR>

" navigating buffers
map <tab> :e #<CR>


" navigating splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" EasyMotion
map ,f ,,f
map ,F ,,F
map ,w ,,w

"bufsurf -- https://github.com/ton/vim-bufsurf
map <C-p> :BufSurfForward<CR>
map <C-o> :BufSurfBack<CR>

" ctrl p -- git://github.com/kien/ctrlp.vim.git
:nmap <leader>b :CtrlPBuffer<CR>
