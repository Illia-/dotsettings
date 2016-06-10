set nocompatible               " be iMproved Включаем несовместимость настроек с предшественником Vi
filetype off                   " required!

" Перенос строк по словам, а не по буквам
set linebreak

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"general
let mapleader = ","
let maplocalleader = "\\"

 " let Vundle manage Vundle
 " required! 
Bundle 'gmarik/vundle'


Bundle 'tpope/vim-surround'

Bundle 'tpope/vim-endwise'

Bundle 'tsaleh/vim-supertab'

Bundle 'wincent/Command-T'
"let g:CommandTHighlightColor="rgba(0,255,0,0.5)"
Bundle 'twe4ked/vim-peepopen'

Bundle 'mileszs/ack.vim'

"rails

Bundle 'vim-ruby/vim-ruby'

"Rspec syntax highlighting
Bundle 'Keithbsmiley/rspec.vim'

"vim ruby capybara
Bundle 'https://github.com/tonekk/vim-ruby-capybara.git'

Bundle 'tpope/vim-rails'

Bundle 'tpope/vim-haml'

"Vim syntax highlighting for Blade templates.
Bundle 'xsbeats/vim-blade'

"Emmet-vim
Bundle "mattn/emmet-vim"
imap <D-y> <C-y>,

" Javascript
Bundle 'pangloss/vim-javascript'
"for js library [jQuery, underscore.js, lo-dash, Backbone.js, prelude.ls, AngularJS, RequireJS, Sugar.js, Jasmine]
Bundle 'https://github.com/othree/javascript-libraries-syntax.vim.git'
let g:used_javascript_libs = 'underscore,backbone,jquery,angularjs,requirejs'
Bundle 'vim-coffee-script'
"Bundle 'itspriddle/vim-jquery'

"JavaScript ES6
Plugin 'isRuslan/vim-es6'

"NodeJS
Bundle 'moll/vim-node'

"JSON
Bundle 'elzr/vim-json'
"let g:vim_json_syntax_conceal = 0

" Web (generic)
Bundle 'HTML-AutoCloseTag'
"Bundle 'git://github.com/docunext/closetag.vim.git'

"CSS editor
Bundle 'git://github.com/csexton/snipmate.vim.git'

"project tree
Bundle "https://github.com/scrooloose/nerdtree.git"
nmap <silent> <unique> <leader>n :NERDTreeToggle<CR>
nmap <silent> <unique> <leader>/ :NERDTreeFind<CR>

"finder for tree
"Bundle 'kien/ctrlp.vim'

"Intelligent autocompletion for quotes, parenthesis, brackets etc
Bundle 'git://github.com/Raimondi/delimitMate.git'

"solorized
Bundle 'git://github.com/altercation/vim-colors-solarized.git'

"vDebug for xdebug
"Bundle 'joonty/vdebug.git'

"mustache and handlebars mode
Plugin 'mustache/vim-mustache-handlebars'

" Dockerfile
Plugin 'ekalinin/Dockerfile.vim'

"elixir
Plugin 'elixir-lang/vim-elixir'

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=0

syntax enable
set background=dark
colorscheme solarized
"set guifont=Monaco\ Bold\ 12
"set fuoptions=maxvert,maxhorz " fullscreen options (MacVim only), resized window when changed to fullscreen
set guifont=Monaco:h15
"set transparency=7

"set guioptions-=T " remove toolbar
"set guioptions=egmrt  " hide the gui menubar

let g:solarized_termtrans = 1

filetype plugin indent on     " required!

"Размер сдвига при нажатии на клавиши «<» и «>»
set shiftwidth=2

"Размер табуляции
set tabstop=2

"To insert space characters whenever the tab key is pressed
set expandtab

"
set smarttab

"makes the spaces feel like real tabs
set softtabstop=2

"Копирует отступ от предыдущей строки » наследовать отступы предыдущей строки
set autoindent

" Search as you type.
set incsearch

" highlighing search
set hlsearch


" Ignore case when searching.
set ignorecase

" Ignore case when searching lowercase
set smartcase

" Показывать все возможные кандидаты для выбора при авто-завершении команд в командной строке
set wildmenu

" Show editing mode
set showmode

"numbers
set number

"Размер истории для отмены правок
set undolevels=1000


" spell checking on
set spelllang=en_us
syntax on

" syntax for jbuilder
au BufNewFile,BufRead *.jbuilder set filetype=rb

"Включаем отображение выполняемой в данный момент команды в правом нижнем углу экрана
set showcmd

"Показывать строку с позицией курсора
set ruler

"
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
 "
 " Easier moving in tabs and windows
   map <C-J> <C-W>j<C-W>_
   map <C-K> <C-W>k<C-W>_
   map <C-L> <C-W>l<C-W>_
   map <C-H> <C-W>h<C-W>_
 "                          map <C-K> <C-W>k<C-W>_

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
set listchars=trail:·,tab:»·

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

"Открытие\закрытие новой вкладки по CTRL+T и CTRL+W
"nmap <C-t> :tabnew<CR>
"imap <C-t> <Esc>:tabnew<CR>a
nmap <C-x> :tabclose<CR>
imap <C-x> <Esc>:tabclose<CR>

map <D-t> <Plug>PeepOpen
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> <Plug>PeepOpen
  macmenu File.Print key=<nop>
end

"Сохранить файл по <F11>
nmap <F11> :w<CR>
imap <F11> <Esc>:w<CR>
vmap <F11> <Esc>:w<CR>

" Add paste from buffer in inserrt mode
imap <D-p> <C-R>"

" Inser New Line
map <S-Enter> O<ESC>
map <Enter> o<ESC>

"CommandT with CTRL  C
"nmap <D-t> :CommandT<CR>
map <leader>a :Ack!

:command WQ wq
:command Wq wq
:command W w
:command Q q
"if has("mac") || has("macunix")    endif
