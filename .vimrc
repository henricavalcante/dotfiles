if 0 | endif

if has('vim_starting')
    if &compatible
        set nocompatible
    endif
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'kien/ctrlp.vim'

call neobundle#end()

filetype plugin indent on
NeoBundleCheck

set background=dark
filetype on
filetype plugin on
filetype indent on
set autowrite

set hidden
let mapleader = ","
set showcmd

syntax on

imap <C-c> <esc>

try
    colorscheme solarized
catch
endtry

set tabstop=2
set softtabstop=2
set shiftwidth=4
set textwidth=80
set smarttab
set expandtab
set smartindent
set ruler
set relativenumber
set ttyfast
set autoread
set more
set cursorline!
set list
set listchars=nbsp:¬,tab:»·,trail:·,eol:$,extends:>,precedes:<

hi User1 ctermfg=196 guifg=#eea040 guibg=#222222
hi User2 ctermfg=75 guifg=#dd3333 guibg=#222222
hi User3 guifg=#ff66ff guibg=#222222
hi User4 ctermfg=239 guifg=#a0ee40 guibg=#222222
hi User5 guifg=#eeee40 guibg=#222222

set statusline=                                     " Override default
set statusline+=%2*\ %f\ %m\ %r%*                   " Show filename/path
set statusline+=%3*%=%*                             " Set right-side status info after this line
set statusline+=%4*%l/%L:%v%*                       " Set <line number>/<total lines>:<column>
set statusline+=%5*\ %*                             " Set ending space

set noerrorbells
set novisualbell
set timeoutlen=500
set hlsearch
set incsearch
set magic
set showmatch
set matchtime=2
set laststatus=2

if has("persistent_undo")
    set undodir=~/.vim/undodir
    set undofile
endif

autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
set viminfo^=%

map 0 ^

nmap <leader><cr> i<cr><Esc>

cmap w!! %!sudo tee > /dev/null %

map <silent> <F5> <esc>:w<CR><esc>:!./%<CR>

map <silent> <C-F7> :only<CR>:set invnumber invlist number?<CR>
map <silent> <F7> :set invpaste paste?<CR>i

command! Q q
command! W w

map Q <Nop>
let loaded_matchparen = 1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra'
nmap <silent> <C-D> :NERDTreeToggle<CR>

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

