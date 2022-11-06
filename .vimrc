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
    Plugin 'jeetsukumaran/vim-pythonsense'
    Plugin 'ycm-core/YouCompleteMe'
    Plugin 'davidhalter/jedi-vim'
    Plugin 'mechatroner/rainbow_csv'
    Plugin 'sheerun/vim-polyglot'
    Plugin 'sbdchd/neoformat'
call vundle#end()            " required

" Automatically Sources vim config file if it exists within the directory
set exrc
" Sets it to always be a block cursor
set guicursor
" Removes the highlight word after search
set nohlsearch
" Can navigate away from files without saving them
set hidden
set encoding=utf-8
set noerrorbells
syntax on
set clipboard=unnamed

colorscheme gruvbox
set background=dark

set number
set rnu
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

au BufNewFile,BufRead *.js, *.html, *.css, *.yaml, *.yml
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

let g:indentLine_char = '⦙'
"let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'

" Ale Settings for Python
let g:ale_linters = {
            \   'python': ['pylint'],
            \   'javascript': ['eslint'],
            \   'yaml': ['yamllint'],
            \}
let g:ale_fixers = {
            \   'javascript': ['prettier'],
            \   'css': ['prettier'],
            \   'html': ['prettier'],
            \   'scss': ['prettier'],
            \   'typescript': ['prettier','eslint'],
            \   'reason': ['refmt'],
            \}
" let g:ale_fixers = {'python': ['isort', 'yapf', 'remove_trailing_lines', 'trim_whitespace']}
let g:ale_lsp_suggestions = 1
let g:ale_fix_on_save = 1
let g:ale_go_gofmt_options = '-s'
let g:ale_go_gometalinter_options = '— enable=gosimple — enable=staticcheck'
let g:ale_completion_enabled = 0
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] [%severity%] %code: %%s'

let g:neoformat_try_node_exe = 1
autocmd BufWritePre *.js Neoformat

au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
" au FileType typescript setlocal formatprg=prettier\ — parser\ typescript
"
autocmd BufNewFile,BufReadPost,BufWritePost *.csv RainbowAlign
autocmd BufWritePre *.csv RainbowShrink
