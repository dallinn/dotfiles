set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Vim-Airline status bar and themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
" Vim perl syntax highlighting and template toolkit
Plugin 'vim-perl/vim-perl'
" Es6 vim syntax and snippets
Plugin 'othree/yajs.vim'
" NERDTREE expolorer view
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
set cursorline
set nowrap
set laststatus=2
set splitright
set mouse=nicr

" vim-colorschemes theme
colorscheme busybee
" Set all tt files to tt2
au BufNewFile,BufRead *.tt setf tt2
" Set all html files to tt2html (for work only)
au BufRead,BufNewFile *.html set filetype=tt2html
" Set all tt files to tt2html (for work only)
au BufRead,BufNewFile *.tt set filetype=tt2html
" Set all ejs files to html
au BufRead,BufNewFile *.ejs set filetype=html
" Auto start NERDTree
au vimenter * NERDTree
au VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
