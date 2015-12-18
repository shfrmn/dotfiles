set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Other Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'easymotion/vim-easymotion'
Plugin 'Raimondi/delimitMate'
Plugin 'ervandew/supertab'
Plugin 'helino/vim-json'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'AndrewRadev/switch.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Yggdroot/indentLine'

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

" Next line: nerdtree autolaunch
" autocmd vimenter * NERDTree

" Limelight coupled with Goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

set laststatus=2


" 
set background=dark
syntax on
" tab settings
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
" line numbers
set number
" colorscheme
colorscheme molokai

" 'Switch' plugin
let g:switch_custom_definitions =
	\ [
	\ 	['fn', 'function () {}']
	\ ]

" indentLine
let g:indentLine_char = '.'
" vim-better-whitespace
highlight ExtraWhitespace ctermbg=234
