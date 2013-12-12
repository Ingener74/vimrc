
syntax on

imap jj <esc>

set tabstop=4
set shiftwidth=4
set softtabstop=4

set number

" switch to next tab
nnoremap <C-r> :tabnext<CR>
inoremap <C-r> <Esc>:tabnext<CR>i
