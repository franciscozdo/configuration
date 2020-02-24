".vimrc FranciscoZdo

"PLUGINS

if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim' "lightline
"Plug 'altercation/vim-colors-solarized' "solarized theme 
"Plug 'scrooloose/nerdtree' "NERDTree
"Plug 'flazz/vim-colorschemes'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
"Plug 'lervag/vimtex'

call plug#end()

"let g:vimtex_view_method='zathura'

set laststatus=2 "diplays lightline
set noshowmode "don't show vim status

"UTF-8
set encoding=utf-8

"INDENTING

set autoindent
filetype indent on
set tabstop=2 "visual spaces per TAB
set shiftwidth=2 
set expandtab "tabs are spaces
set softtabstop=2 "number of spaces per tab
    
"VIEW

set number "show line numbers (or with relativenumber)
set cursorline "highlight current line
set showmatch "shows matching bracket
syntax on

"set textwidth=80
"set linebreak "breaks line when it's too long

"color sheme


"let g:solarized_use16=1

set background=dark 
"set background=light 
colorscheme dracula
"let g:gruvbox_contrast_dark='soft'
"let g:gruvbox_contrast_light='hard'
let g:lightline = {'colorscheme': 'dracula'}

"spell checking
"set spelllang=pl,en
"set spell


"SPLITTING

"split navigation CTRL + H/J/K/L
nnoremap <C-J> <C-W><C-J> 
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"vsplit and split opens on rightside and on bottom 
set splitright
set splitbelow

"FOLDING
"
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

" to copy to clipboard
set clipboard=unnamedplus
"noremap <Leader>P "*y
"noremap <Leader>Y "*p
noremap <Leader>y "*y
noremap <Leader>p "*p"

