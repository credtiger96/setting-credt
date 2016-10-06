
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

"Powerful autocomplete tool"-------------------------------------------------------------------
Plugin 'neocomplcache'

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" " Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" " Use smartcase.
let g:neocomplcache_enable_smart_case = 1
 " Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
"
" " Enable heavy features.
" " Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" " Use underbar completion.
 "let g:neocomplcache_enable_underbar_completion = 1

" " Define dictionary.
 let g:neocomplcache_dictionary_filetype_lists = {
     \ 'default' : '',
         \ 'vimshell' : $HOME.'/.vimshell_hist',
             \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

"POPUP COLOR

hi Pmenu ctermbg=7
hi PmenuSel ctermbg=1
hi PmenuSbar ctermbg=3

""-----------------------------------------------------------------------------------------
" Showing definition of variable of function that cursor points
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
"let g:syntastic_debug = 1
let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_option = "-std=c++14 -Wall -Wextra -Wpedantic"
""""""""""""""""""""""""""""""""
" Initalization
"""""""""""""""""""""""""""""""""



