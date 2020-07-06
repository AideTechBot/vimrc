let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'


set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set number

if filereadable(".vim.custom")
  so .vim.custom
endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Solidity plugin
Plugin 'tomlion/vim-solidity'

" Autocomplete
Plugin 'Valloric/YouCompleteMe' 

call vundle#end()            " required

filetype plugin indent on    " required
colorscheme srcery
autocmd VimEnter * NERDTree
map <C-n> :NERDTreeToggle<CR>
ino jj <esc>
cno jj <c-c>
set clipboard=unnamedplus

"nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" Move up and down in autocomplete with <c-j> and <c-k>
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
