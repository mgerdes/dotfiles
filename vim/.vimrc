"neobundle
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible 
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'ctol/vim-cpp-enhanced-highlight'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'tpope/vim-leiningen'
NeoBundle 'tpope/vim-classpath'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'bling/vim-airline'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'vim-scripts/aftersyntaxc.vim'
NeoBundle 'raichoo/haskell-vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'tikhomirov/vim-glsl'
NeoBundle 'vim-cpp-enhanced-highlight'
call neobundle#end()

filetype plugin indent on

NeoBundleCheck

syntax on

set t_Co=256
set nocompatible
set nu
set relativenumber
set autoindent
set ignorecase
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

map J 10j
map K 10k
map <leader>J :join<cr>
map <tab> %
nnoremap <s-h> :bprevious!<esc> 
nnoremap <s-l> :bnext!<esc>
inoremap {<cr> {<cr>}<C-o>O

let g:airline_theme="wombat"
let g:airline#extensions#tabline#enabled=1
set laststatus=2

set background=dark
colo wombat256
hi Normal ctermbg=234
hi Search cterm=none ctermbg=yellow ctermfg=black
hi IncSearch cterm=none ctermbg=yellow ctermfg=black
hi Special ctermfg=10
hi CursorLine ctermbg=235
hi LineNr ctermbg=none
hi MatchParen ctermbg=none ctermfg=red
hi Error ctermbg=none ctermfg=10 term=none
hi VertSplit ctermbg=none
