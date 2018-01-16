set nocompatible              " required
filetype off                  " required
set backspace=indent,eol,start

set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'vim-scripts/taglist.vim'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" For angular
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'burnettk/vim-angular'

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


set clipboard=unnamed

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_python_binary_path = '/usr/bin/python3'
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set nu

set splitbelow
set splitright

au BufNewFile,BufRead *.py
\ set tabstop=4 |
\ set softtabstop=4 |
\ set shiftwidth=4 |
\ set textwidth=79 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix

au BufNewFile,BufRead *.go
\ set tabstop=4 |
\ set softtabstop=4 |
\ set shiftwidth=4 |
\ set textwidth=79 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix

au BufNewFile,BufRead *.js,*.ts,*.html
\ set tabstop=2 |
\ set softtabstop=2 |
\ set shiftwidth=2 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix

au BufNewFile,BufRead *.java
\ set tabstop=4 |
\ set softtabstop=4 |
\ set shiftwidth=4 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let python_highlight_all=1
syntax on

let g:used_javascript_libs = 'angularjs,jquery,underscore,backbone'

nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F4> :TagbarToggle<CR>
nnoremap <silent> <F9> :TlistToggle<CR>
