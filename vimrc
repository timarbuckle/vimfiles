set nocompatible
filetype off

" https://github.com/VundleVim/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
"Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-erlang/vim-erlang-runtime'
"Plugin 'vim-erlang/vim-erlang-compiler'

"Plugin 'elzr/vim-json'
"Plugin 'klen/python-mode'
"Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-endwise'
"Plugin 'tpope/vim-git'
"Plugin 'tpope/vim-surround'

call vundle#end()            " required

filetype on
filetype plugin indent on    " required
filetype indent on


"
" {{{ Basic Config
"
set number
set nuw=6
set ruler
syntax on

" Set encoding
set encoding=utf-8

let mapleader=','

" Whitespace stuff
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set showmode
set showcmd
set showmatch
set hidden
"set list listchars=tab:▸\ ,eol:¬,trail:·
set list listchars=tab:▸\ ,trail:·
set noeol
set autoindent

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has('gui_running')
    set lines=45 columns=100

    "turn off ugly toolbar
    "set guioptions=egmrt
    set guioptions-=T
    "set pct transparency
    set transparency=0
    if has("mac")
        "set guifont=Ubuntu\ Mono:h14
        set guifont=Hack:h13
    elseif has("unix")
        "set guifont=Ubuntu\ Mono\ 14
        set guifont=Hack:h13
    else
        set guifont=Hack:h13
    endif
"else
endif

:colorscheme lightning
":colorscheme blackboard
":colorscheme mustang
":colorscheme atom
":colorscheme two2tango

" Swap files. Generally things are in version control
" don't use backupfiles either.
set noswapfile
set nobackup
set nowritebackup

" }}}

" {{{ Searching
"
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault
"nnoremap / /\v
"vnoremap / /\v
set grepprg=ack\ --column
set grepformat=%f:%l:%c:%m

" Clear search highlighting
map <Leader><Space> :nohl<CR>

" }}}

" Spell checking. configure the language and turn off spell checking.
set spell spelllang=en_ca
set nospell

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,*.pyc,node_modules/*

" set to auto read when a file is changed from the outside
set autoread

" make uses real tabs
au FileType make setl noexpandtab

" status bar
set laststatus=2
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1

" highlight current line
" highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline
