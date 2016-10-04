
" This .vimrc file was written by Credtiger96

"""""""""""""""""""""""""""""""""""""""'
" GENERAL 
""""""""""""""""""""""""""""""""""""""""
"set to auto read when a file is changed from outside
set autoread

" set incompatable with previous version, VI 
set nocompatible 

" required for plugin 
filetype off

""""""""""""""""""""""""
"Color and Sheme 
""""""""""""""""""""""""
" Color Scheme
colorscheme desert
" syntax highlight 
syntax on 

"""""""""""""""""""""""""
"VIm User interface
""""""""""""""""""""""""
"Highlight search result
set hlsearch 
"show currnet position to buttom of screen
set ruler
"show matching bracket when text indicator is over them 
set showmatch 
" Go to back of previous line with backspace 
set backspace=eol,start,indent
"show line number 
set number 
" Makes search act like search in modern browsers
set incsearch 
"""""""""""""""""""""""""""""
"Text, tab and indent
""""""""""""""""""""""""""""
" auto indentation = 4 
set shiftwidth=4

" set C style Indentation 
set cindent 
" set auto indent 
set autoindent 
" tab space = 4 
set tabstop=4 
""""""""""""""""""""""""""""
"ENCODING"
""""""""""""""""""""""""""""
"set file & Terminal encoding 
set tenc=utf-8
set fileencoding=utf-8
set encoding=utf-8

" set edit history 1000 
set history=1000


"""""""""""""""""""
"PLUGIN (Vundle) 
"""""""""""""""""""
" set runtime path to include vundle and initalize 
set rtp+=~/.vim/bundle/vundle/ 
call vundle#rc()

"let Vundle manage Vundle, required 
Plugin 'gmarik/vundle'
Plugin 'git://git.wincent.com/command-t.git'

filetype plugin indent on 

"""""""""""""""""""""""""
"Plugins + Plugin Keymap 
"
""""""""""""""""""""""""
" This is Nerdtree 
Plugin 'The-NERD-tree'
nmap <F7> :NERDTreeToggle<CR> 
let NERDTreeQuitOnOpen=1

" sidebar indicating function, global variable list
" Plugin 'Taglist' 
nmap <F8> :Tlist<CR>

let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Use_Right_Window=1

" Auto Completion
Plugin 'AutoComplPop' 

" Showing definition of variable of function that cursor poinys
Plugin 'srcexpl' 
nmap <F9> :SrcExplToggle<CR>

" Syntastics plugin
Plugin 'scrooloose/syntastic'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""""""""""""""""""""""""""""""
" Initalization
"""""""""""""""""""""""""""""""""



