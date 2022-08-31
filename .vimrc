set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox' 
Plugin 'tpope/vim-surround' 
Plugin 'tpope/vim-commentary' 
Plugin 'tpope/vim-fugitive' 
Plugin 'mattn/emmet-vim' 
Plugin 'tmhedberg/SimpylFold' 
Plugin 'vim-scripts/indentpython.vim' 
call vundle#end()            " required

set encoding=utf-8
set noerrorbells
syntax on

colorscheme gruvbox
 set background=dark

" set relativenumber
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

set foldmethod=indent
set foldlevel=99
nnoremap <space> za

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
