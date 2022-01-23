call plug#begin('C:/Users/Home/AppData/Local/nvim/autoload/plugged')
    Plug 'connorholyday/vim-snazzy'
    Plug 'overcache/NeoSolarized'
    Plug 'arzg/vim-colors-xcode' 
    Plug 'tribela/vim-transparent'
call plug#end()

"tab + shift size
set autoindent
set smarttab
set expandtab
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4

"UI
syntax enable
set laststatus=2
set ruler
set number
set relativenumber
set mouse=a
set background=dark
set noerrorbells
set visualbell
set title
set termguicolors
colorscheme spacegray

"MISC
set backspace=indent,eol,start


