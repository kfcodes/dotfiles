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
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'Yggdroot/indentLine'
Plugin 'pedrohdz/vim-yaml-folds'
Plugin 'dense-analysis/ale'
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

au BufNewFile,BufRead *.yaml, *.yml
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
    \ set expandtab

set foldmethod=indent
set foldlevel=99
nnoremap <space> za

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set clipboard=unnamed

let g:indentLine_char = '⦙'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'
