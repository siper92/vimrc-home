""""""""""""""""""""""""""""""""""""""""""""
" Author:
"    Todor Mitev
"    siper92@gmail.com
" Version:
"    1.0 -> 25.05.2015 
" Sections:
"    1. Generali
"    2. Utils
"""""""""""""""""""""""""""""""""""""""""""
" Keys:
" 	<C -> ctrl key
" 	<M -> alt
"
"""""""""""""""""""""""""""""""""""""""""""
" GENERAL SETTIGNS
"""""""""""""""""""""""""""""""""""""""""""  

" Enable line numbers
set nu
" ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch 
set mouse=a
" Set color mode to 256 colors
set t_Co=256
"set tab size of a hard tabstop
set tabstop=4
" size of an "indent"
set shiftwidth=4
" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

"""""""""""""""""""""""""""""""""""""""""""
" GENEREL KEY BINDINGS  
"""""""""""""""""""""""""""""""""""""""""""

" set leader button
:let mapleader = ","

" Change mouse mode or something like that!
" set mouse=a 
" toggle paste mode, make it easy to past text in vim
set pastetoggle=<C-p>
 
" <C-s> not working because it's a terinal command
" SAVE
map <C-c> :w!<CR>
imap <C-c> <ESC>:w!<CR>i

map <C-q> :wq<CR>
imap <C-q> <ESC>:wq<CR>
vmap <C-q> <ESC>:wq<CR>

" EXIT with no save
map <Tab>/ :q!<CR>
imap <Tab>/ <ESC>:q!<CR>

" SEARCH to Ctrl-F and REPLACE to Ctrl-R
map <C-f> :/
map <C-r> :%s/ 
imap <C-f> <ESC>:/
imap <C-r> <ESC>:%s/
vmap <C-f> <ESC>:/
vmap <C-r> <ESC>:%s/

" create and close new tabls
nnoremap <F1> :tabnew<CR>
nnoremap <F2> :tabclose<CR>

""""""""""""""""""""""""""""""""""""""""
" Utils
""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()

" Map F3 to echo the current date and time
map <F3> :echo 'Current time is ' . strftime('%c')<CR>

"""""""""""""""""""""""""""""""""""""""
" NERD TREE
"""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
