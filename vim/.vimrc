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

call vundle#end()

filetype plugin indent on

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

autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
map <C-n> :NERDTreeToggle<CR>

set background=light
colorscheme eink

set mouse=a
set ttyfast
set ttymouse=sgr

nmap <F8> :TagbarToggle<CR>
set tags=./tags;/

let g:miniBufExplBuffersNeeded = 1
