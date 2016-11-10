set nocompatible
filetype off
set backspace=indent,eol,start

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdTree'
Plugin 'majutsushi/tagbar'
Plugin 'weynhamz/vim-plugin-minibufexpl'
Plugin 'vim-airline/vim-airline'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'

call vundle#end()

filetype plugin indent on

" set term=screen-256color
set lazyredraw
syntax on

filetype plugin indent on
set nu
set laststatus=2
set ruler
set expandtab
set tabstop=3
set shiftwidth=3
set nobackup

" imap <Tab> <C-P>
highlight ColorColumn ctermbg=0
set colorcolumn=81
set tw=79
set vb
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

set foldmethod=indent
set foldlevel=99
nnoremap <space> za

autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
map <C-n> :NERDTreeToggle<CR>

" let g:solarized_termcolors=256

set t_Co=256
set background=light
" colorscheme solarized
colorscheme eink

set mouse=a
set ttyfast
set ttymouse=sgr

nmap <F8> :TagbarToggle<CR>
set tags=./tags;/

let g:miniBufExplBuffersNeeded = 1

set cursorline
hi CursorLine term=bold cterm=bold
hi Comment cterm=italic ctermbg=LightGrey
hi String cterm=italic

let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1, 'py':1, 'python':1 }
let g:ycm_autoclose_preview_window_after_completion = 1

noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>
