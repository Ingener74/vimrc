
let mapleader=","                               " let , leader key

" ################
" Install Vundle
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

set nocompatible                                " be iMproved
filetype off                                    " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" NERDTree
Bundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
" map <Leader>n :NERDTree<CR>
let NERDTreeShowHidden=1

" jedi vim
Bundle 'davidhalter/jedi-vim'

" snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
" - Optional:
Bundle "honza/vim-snippets"

" Syntastic, check syntax
Bundle 'scrooloose/syntastic'

" tComment, for smart comment
Bundle 'tomtom/tcomment_vim'
map <leader>c <c-_><c-_>

" EasyMotion
Bundle 'Lokaltog/vim-easymotion'
" let g:EasyMotion_leader_key = '<Leader'

" Zen Coding
Bundle "mattn/emmet-vim"
" imap <leader>em <c-y>,

" CSS Color Plugin
" Bundle "ap/vim-css-color"

" Smart search for anythig
Bundle 'vim-scripts/FuzzyFinder'
" " Dependency for Fuzzy finder
Bundle 'vim-scripts/L9'

" Best C/C++/Clang/C# auto complete plugin
"
" install steps for YouCompleteMe 
" 1. sudo apt-get install build-essential cmake python-dev
" 2. cd ~/.vim/bundle/YouCompleteMe
" 3. ./install.sh --clang-completer
"
" Bundle 'Valloric/YouCompleteMe'

" vimball plugin
"
" dependencies:
"   sudo apt-get install ruby
Bundle 'tomtom/vimball.rb'

" vim autoformat
" homepage: https://github.com/Chiel92/vim-autoformat
" 
" dependencies: 
"   sudo apt-get install astyle
Bundle 'Chiel92/vim-autoformat'

nnoremap <leader>fm :Autoformat<CR><CR>

filetype plugin indent on                       " required!
" 
" end vundle configures
" ##################################

"                                                                              #
" ============================================: comment
if has("syntax")
	syntax on
endif

imap jj <esc>

set smartcase                                   " Do smart case matching
set smarttab
set expandtab

set autowrite                                   " Automatically save before 
                                                " commands like : next and :make

set tabstop=4                                   " size of hard tabstops
set shiftwidth=4                                " size of indent

set softtabstop=4                               " a combination of spaces and 
                                                " tabs are used to simulate tab 
                                                " stops at a width other than 
                                                " the (hard)tabstop


" Searches
set showmatch
set incsearch
set ignorecase
set hlsearch

set title                                       " show file in window title

" Show tabs with dots
" set listchars=tab:··
" set listchars=tab:»\ ,trail:·,eol:¶
"
" set listchars=tab:<CTRL-K>>>\ ,trail:<CTRL-K>.M,eol:<CTRL-K>PI
set listchars=tab:»\ ,trail:·
set list

set textwidth=80
" set textwidth=120

set colorcolumn=+1

set number                                      " show line number

" switch to next tab in normal and editing mode on Ctrl + r
nnoremap <C-r> :tabnext<CR>
inoremap <C-r> <Esc>:tabnext<CR>i

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Easy window navigation
" Ctrl h and l for navigation window and Ctrl j and k for half page down and up
map <C-h> <C-w>h
map <C-j> <C-d>
map <C-k> <C-u>
map <C-l> <C-w>l

set nowritebackup
set noswapfile

