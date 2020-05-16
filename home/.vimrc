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
set nowrap
set hidden
if has("multi_byte")
  set encoding=utf-8
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,cp1251,cp866,latin1
endif

" netrw settings
filetype plugin on
let g:netrw_liststyle=4
"let g:netrw_altv=1
"let g:netrw_banner=0
"let g:netrw_winsize=25
"let g:netrw_chgwin=1
"let g:netrw_browse_split=2
"let g:netrw_preview=1

" these two settings allow for smartcase search
set ignorecase
set smartcase

colorscheme desert
" alt+pgdn to switch to next buffer
map <Esc>[6;3~ :bn <CR>
" alt+pgup to switch to previous buffer
map <Esc>[5;3~ :bp <CR> 
" alt+# to switch to tab number #
map <Esc>1 :bfirst <CR>
map <Esc>2 :b 2 <CR>
map <Esc>3 :b 3 <CR>
map <Esc>4 :b 4 <CR>
map <Esc>5 :b 5 <CR>
map <Esc>6 :b 6 <CR>
map <Esc>7 :b 7 <CR>
map <Esc>8 :b 8 <CR>
map <Esc>9 :blast <CR>
map <Esc>0 :b 10 <CR>
map <Esc>w :bp<CR> :bd #<CR>

set history=10000

" these settings are for matchit
runtime macros/matchit.vim "use % to jump between XML tags

" these settings are for ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*.swp,*.d,*.o
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
let g:ctrlp_working_path_mode = 'ra' " set working directory relative to .git
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" these settings are for vim-fugitive
set runtimepath^=~/.vim/bundle/vim-fugitive

" these settings are for vim-airline
let g:airline#extensions#tabline#enabled = 1

" syntax
autocmd BufNewFile,BufRead *.bat.cmd set syntax=winbatch
autocmd BufNewFile,BufRead *.plsql set filetype=sql
autocmd BufNewFile,BufRead *.pl set filetype=sql
syntax on
execute pathogen#infect()
