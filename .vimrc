scriptencoding utf-8
set encoding=utf-8

if 0 | endif

if has('vim_starting')
    if &compatible
        set nocompatible
    endif
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'mattn/emmet-vim'
Plug 'Lokaltog/vim-powerline'
Plug 'tacahiroy/ctrlp-ssh'
Plug 'tpope/vim-markdown'
Plug 'digitaltoad/vim-jade'
Plug 'SyntaxRange'

call plug#end()

filetype plugin indent on

set autowrite
set hidden
let mapleader = ","
set showcmd

syntax on
syntax enable
imap <C-c> <esc>

map <C-k> :bp<CR>
map <C-j> :bn<CR>

set tabstop=4
set softtabstop=4
set shiftwidth=4
"set textwidth=80
set smarttab
set expandtab
set smartindent
"set ruler
set relativenumber
set ttyfast
set autoread
set more
set cursorline
set list
set listchars=nbsp:¬,tab:»·,trail:·,eol:$,extends:>,precedes:<

highlight NonText term=standout cterm=bold ctermfg=0  guifg=Black

"set statusline=
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%2*\ %f\ %m\ %r%*
"set statusline+=%3*%=%*
"set statusline+=%#warningmsg#
"set statusline+=%*
"set statusline+=%4*%l/%L:%v%*
"set statusline+=%5*\ %*

let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_syntax_checker=["jsxhint"]
let g:syntastic_html_tidy_exec = 'tidy'
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

"set noerrorbells
"set novisualbell
set timeoutlen=500
set hlsearch
set incsearch
set magic
set showmatch
set matchtime=2
set laststatus=2
set backspace=indent,eol,start

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
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/](\.(git|hg|svn))|(node_modules)$',
            \ 'file': '\v\.(exe|so|dll|ico|png|jpe?g|DS_Store)$',
            \ }
nmap <silent> <C-D> :NERDTreeToggle<CR>

set scrolloff=8
set sidescrolloff=15
set sidescroll=1

let g:user_emmet_settings = {
            \  'html' : {
            \    'snippets' : {
            \      'cdn:jsx' : "script[src=\"https://cdnjs.cloudflare.com/ajax/libs/react/0.13.3/JSXTransformer.js\"]",
            \      'cdn:react' : "script[src=\"https://cdnjs.cloudflare.com/ajax/libs/react/0.13.3/react.js\"]",
            \      'cdn:jquery' : "script[src=\"https://code.jquery.com/jquery-1.11.1.js\"]",
            \      'cdn:jqueryui' : "script[src=\"https://code.jquery.com/ui/1.11.4/jquery-ui.js\"]",
            \      'cdn:socketio' : "script[src=\"https://cdn.socket.io/socket.io-1.2.0.js\"]"
            \    }
            \  }
            \}

autocmd FileType javascript set tabstop=2|set shiftwidth=2|set softtabstop=2|set expandtab
autocmd FileType css set tabstop=2|set shiftwidth=2|set softtabstop=2|set expandtab
autocmd FileType html set tabstop=2|set shiftwidth=2|set softtabstop=2|set expandtab
autocmd FileType php set tabstop=4|set shiftwidth=4|set softtabstop=4|set expandtab
autocmd FileType yml set tabstop=2|set shiftwidth=2|set softtabstop=2|set expandtab
autocmd FileType java set tabstop=4|set shiftwidth=4|set softtabstop=4|set noexpandtab
autocmd FileType python set tabstop=2|set shiftwidth=2|set softtabstop=2|set expandtab
autocmd FileType javascript set makeprg=node\ %

let g:jsx_ext_required = 0
