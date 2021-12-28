""""""""""""""""""""""""""""""
" vimrc
""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" Japanese Help
Plug 'vim-jp/vimdoc-ja'

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" vim lsp setting
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" color scheme
Plug 'chriskempson/base16-vim'

" Customize status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Terraform
Plug 'hashivim/vim-terraform'

" Ansible 
Plug 'chase/vim-ansible-yaml'

call plug#end()

""""""""""""""""""""""""""""""
set nocompatible
set backspace=indent,eol,start
set encoding=utf-8
set helplang=ja,en
set number
set expandtab
set hlsearch
set ignorecase
set incsearch
set smartcase
set laststatus=2
syntax on
set autoindent
filetype plugin indent on
set showcmd
set background=dark
set wildmenu
set ruler
set showmatch
set clipboard+=unnamed

" line number color
highlight lineNr term=underline ctermfg=11 guifg=Grey

" setting color scheme
let base16colorspace=256  " Access colors present in 256 colorspace
set termguicolors
"" colorscheme base16-default-dark

" setting status bar
let g:airline_theme='luna'

" Emacs Move
imap <C-a>  <Home>
imap <C-e>  <End>
imap <C-b>  <Left>
imap <C-f>  <Right>
imap <C-n>  <Down>
imap <C-p>  <UP>
