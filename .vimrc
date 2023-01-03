set nocompatible               " be iMproved Включаем несовместимость настроек с предшественником Vi
filetype off                   " required!

set linebreak
"general
let mapleader = ","
let maplocalleader = "\\"


" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'ervandew/supertab'
Plug 'vim-ruby/vim-ruby'
"rails
"Rspec syntax highlighting
Plug 'Keithbsmiley/rspec.vim'

Plug 'tpope/vim-rails'

"Emmet-vim
Plug 'mattn/emmet-vim'
imap <D-y> <C-y>,


" Javascript
Plug 'pangloss/vim-javascript'
"for js library [jQuery, underscore.js, lo-dash, Backbone.js, prelude.ls, AngularJS, RequireJS, Sugar.js, Jasmine]
Plug 'https://github.com/othree/javascript-libraries-syntax.vim.git'
let g:used_javascript_libs = 'react'

"JavaScript ES6
Plug 'isRuslan/vim-es6'

"JSON
Plug 'elzr/vim-json'

" Web (generic)
Plug 'alvan/vim-closetag'
"Plug 'tpope/vim-haml'

"CSS editor
"Plug 'git://github.com/csexton/snipmate.vim.git'

"project tree
Plug 'https://github.com/scrooloose/nerdtree.git'
"open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nmap <silent> <unique> <leader>n :NERDTreeToggle<CR>
nmap <silent> <unique> <leader>/ :NERDTreeFind<CR>

"Intelligent autocompletion for quotes, parenthesis, brackets etc
Plug 'https://github.com/Raimondi/delimitMate.git'

"solorized
Plug 'https://github.com/altercation/vim-colors-solarized.git'

" Dockerfile
Plug 'ekalinin/Dockerfile.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"check https://github.com/junegunn/fzf/wiki/On-MacVim-with-iTerm2
let g:fzf_launcher = "/usr/local/bin/fzf_launcher.sh %s"
" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~70%' }

" Initialize plugin system
call plug#end()

Plug 'avakhov/vim-yaml'

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=0

syntax enable
set background=dark
colorscheme solarized
"set fuoptions=maxvert,maxhorz " fullscreen options (MacVim only), resized window when changed to fullscreen
set guifont=Monaco:h15
"set transparency=7

"set guioptions-=T " remove toolbar
"set guioptions=egmrt  " hide the gui menubar

let g:solarized_termtrans = 1

filetype plugin indent on     " required!

set shiftwidth=2
set tabstop=2

"To insert space characters whenever the tab key is pressed
set expandtab
set smarttab

"makes the spaces feel like real tabs
set softtabstop=2

"inherit indents of previous line
set autoindent

"Search as you type.
set incsearch

"highlighing search
set hlsearch

" Ignore case when searching.
set ignorecase

" Ignore case when searching lowercase
set smartcase

" show all available commands for autocomplete
set wildmenu

" Show editing mode
set showmode

"numbers
set number

" history size for revert changes
set undolevels=1000


" spell checking on
set spelllang=en_us
syntax on

" syntax for jbuilder
au BufNewFile,BufRead *.jbuilder set filetype=rb

" show executed command in buttom right corner
set showcmd

" show row with corsor position
set ruler

"PlugInstall [name ...] [#threads]	Install plugins
"PlugUpdate [name ...] [#threads]	Install or update plugins
"PlugClean[!]	Remove unused directories (bang version will clean without prompt)
"PlugUpgrade	Upgrade vim-plug itself
"PlugStatus	Check the status of plugins




 " Easier moving in tabs and windows
   map <C-J> <C-W>j<C-W>_
   map <C-K> <C-W>k<C-W>_
   map <C-L> <C-W>l<C-W>_
   map <C-H> <C-W>h<C-W>_

 "copy paste
 "nmap <C-V> "+gP
 "imap <C-V> <ESC><C-V>i
 "vmap <C-C> "+y

"Space - Page Down
nmap <silent> <unique> <Space> <PageDown>

"Shift + Space - Page Down
nmap <silent> <unique> <S-Space> <PageUp>

nnoremap <A-C-Left> :tabprevious<CR>
nnoremap <A-C-Right> :tabnext<CR>
nnoremap <silent> <A-C-Up> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-C-Down> :execute 'silent! tabmove ' . tabpagenr()<CR>

"Highlighting tabs (1 is red can change 'T' '>' )
highlight SpecialKey ctermfg=8
set list
set listchars=trail:·,tab:»·,nbsp:~

" tab navigation
nnoremap <A-F1> 1gt
nnoremap <A-F2> 2gt
nnoremap <A-F3> 3gt
nnoremap <A-F4> 4gt
nnoremap <A-F5> 5gt
nnoremap <A-F6> 6gt
nnoremap <A-F7> 7gt
nnoremap <A-F8> 8gt
nnoremap <A-F9> 9gt
nnoremap <A-F0> 10gt

" open close new tab with CTRL+T & CTRL+W
"nmap <C-t> :tabnew<CR>
"imap <C-t> <Esc>:tabnew<CR>a
nmap <C-x> :tabclose<CR>
imap <C-x> <Esc>:tabclose<CR>

" Add paste from buffer in inserrt mode
imap <D-p> <C-R>"

" Inser New Line
map <S-Enter> O<ESC>
map <Enter> o<ESC>

"CommandT with CTRL  C
map <D-F> :Files<CR>
map <leader>a :Ag 

:command WQ wq
:command Wq wq
:command W w
:command Q q

nnoremap <leader>p :let @* = expand("%:p").":".line('.')<cr>
