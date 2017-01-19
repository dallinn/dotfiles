" VUNDLE BEGIN
set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Required for Vundle
Plugin 'VundleVim/Vundle.vim'

" Vim-Airline status bar and themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'flazz/vim-colorschemes'
" Vim perl syntax highlighting and template toolkit
Plugin 'vim-perl/vim-perl'
" Es6 vim syntax and snippets
Plugin 'othree/yajs.vim'
" NERDTREE expolorer view
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for help
" END OF VUNDLE

syntax enable
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set number
set ignorecase
set smartcase
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set hlsearch
set incsearch
set cursorline
set nowrap
set laststatus=2
set splitright
set splitbelow
set mouse=nicr
set t_Co=256

" Vim colorscheme / themes
"colorscheme Monokai
colorscheme wombat
let g:airline_theme='wombat'
"colorscheme busybee

augroup commands
    au!
    " Set all tt files to tt2
    au BufNewFile,BufRead *.tt setf tt2
    " Set all html files to tt2html (for work only)
    "au BufRead,BufNewFile *.html set filetype=tt2html
    " Set all tt files to tt2html (for work only)
    "au BufRead,BufNewFile *.tt set filetype=tt2html
    " Set all ejs files to html
    au BufRead,BufNewFile *.ejs set filetype=html
    " Auto start NERDTree
    au vimenter * NERDTree
    au vimenter * wincmd p
    au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END
