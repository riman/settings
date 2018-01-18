" set nocp must go at the very start as it sets many options in Vim by default
set nocp

set bs=2
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent
set wildmenu
set background=dark
set number
set pastetoggle=<F3>

" netrw settings
filetype plugin on
let g:netrw_liststyle=3
let g:netrw_altv=1
let g:netrw_banner=0
let g:netrw_winsize=25
let g:netrw_browse_split=2
let g:netrw_preview=1

" these two settings allow for smartcase search
set ignorecase
set smartcase

colorscheme desert
map <F2> :tabn <CR>
map <F1> :tabp <CR> 

" this settings must go after the 'set nocp' setting or else it wouldn't work 
set history=10000
runtime macros/matchit.vim "use % to jump between XML tags


" settings swap file location to $HOME
" set directory=$HOME/.vim/swapfiles// "two slashes at the end means using full path of file location 


" syntax
autocmd BufNewFile,BufRead *.bat.cmd   set syntax=winbatch
syntax on

