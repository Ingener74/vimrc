
let mapleader=","                             " let , leader key

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

set nocompatible                              " be iMproved
filetype off                                  " required!

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
" Bundle 'rstacruz/sparkup'

" My bundles here: 

filetype plugin indent on                     " required!
" 
" end vundle configures
" ##################################

"                                                                              #
" ============================================: comment
if has("syntax")
	syntax on
endif

imap jj <esc>

set smartcase                                 " Do smart case matching

set autowrite                                 " Automatically save before 
                                              " commands like : next and :make

" ============================================: comment
set tabstop=4                                 " size of hard tabstops
set shiftwidth=4                              " size of indent

set softtabstop=4                             " a combination of spaces and 
                                              " tabs are used to simulate tab 
											  " stops at a width other than 
											  " the (hard)tabstop

" set textwidth=80

set number                                    " show line number

" switch to next tab in normal and editing mode on Ctrl + r
nnoremap <C-r> :tabnext<CR>
inoremap <C-r> <Esc>:tabnext<CR>i

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

