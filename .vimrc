".vimrc FranciscoZdo

"PLUGINS

if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim' "lightline
set laststatus=2 "diplays lightline
set noshowmode "don't show vim status
Plug 'altercation/vim-colors-solarized' "solarized theme 
Plug 'scrooloose/nerdtree' "NERDTree

call plug#end()

"UTF-8
set encoding=utf-8

"INDENTING

set autoindent
filetype indent on
set tabstop=2 "visual spaces per TAB
set shiftwidth=4 
set expandtab "tabs are spaces
set softtabstop=2 "number of spaces per tab

"VIEW

set number "show line numbers
set cursorline "highlight current line
set showmatch
syntax on

set textwidth=80
set linebreak "breaks line when it's too long

"color sheme
let g:lightline = {'colorscheme': 'wombat'}
"let g:solarized_use16=1

set background=dark 
colorscheme solarized

"spell checking
set spelllang=pl,en
set spell


"SPLITTING

"split navigation CTRL + H/J/K/L
nnoremap <C-J> <C-W><C-J> 
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitright
set splitbelow

"FOLDING

set foldmethod=manual
augroup remember_folds
    autocmd!
    autocmd BufWinLeave * mkview
    autocmd BufWinEnter * silent! loadview
augroup END

"HISTORY, LOADING FILE, ETC.

"you can undo between different saves of file
set undofile
set history=1000
"directories for swap files, etc
set undodir=~/.vim/.undo
set directory=~/.vim/.swp
set backupdir=~/.vim/.backup
"auto reload file
set autoread

"settings for NERDTree
"autocmd vimenter * NERDTree "opening NERDTree with every vim start
nmap <F8> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "closing NerdTree i



