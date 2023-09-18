" VUNDLE BEGIN
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' 

" Vundle Plugins
" Vim-Airline status bar and themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'flazz/vim-colorschemes'
" Vim perl syntax highlighting and template toolkit
#Plugin 'vim-perl/vim-perl'
" Es6 vim syntax and snippets
Plugin 'othree/yajs.vim'
" NERDTREE expolorer view
Plugin 'scrooloose/nerdtree'
" emmet vim
Plugin 'mattn/emmet-vim'
" scala
#Plugin 'derekwyatt/vim-scala'

call vundle#end()
filetype plugin indent on

" Vim Options
syntax enable
set expandtab
#set tabstop=4
#set softtabstop=4
#set shiftwidth=4
set tabstop=2
set softtabstop=2
set shiftwidth=2
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
set t_Co=256
set backspace=indent,eol,start

set mouse=nicr

" Use mouse to resize vim panes
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end


" Vim colorscheme / themes
"colorscheme Monokai
"colorscheme busybee
colorscheme wombat
let g:airline_theme='wombat'

" Show Hidden Files on Sidebar
let NERDTreeShowHidden=1

augroup commands
    au!
    " Set all vue files to html
    au BufRead,BufNewFile *.vue set filetype=html
    " Auto start NERDTree
    au vimenter * NERDTree
    au vimenter * wincmd p
    au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    #au BufNewFile,Bufread *.vue set filetype=html
    au BufNewFile,Bufread *.vue set syntax=html
    au BufNewFile,Bufread *.grc.conf set syntax=sh
augroup END
