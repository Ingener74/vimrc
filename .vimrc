
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

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here: 

filetype plugin indent on     " required!
" 
" end vundle configures
" ##################################

syntax on

imap jj <esc>

set tabstop=4
set shiftwidth=4
set softtabstop=4

" set textwidth=80

set number

" switch to next tab
nnoremap <C-r> :tabnext<CR>
inoremap <C-r> <Esc>:tabnext<CR>i