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
" GENERAL
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
set t_Co=256

""""""""""""""""""""""""""""""""""""""""""
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

" SEARCH to Ctrl-F
map <C-f> :/
imap <C-f> <ESC>:/
vmap <C-f> <ESC>:/


""""""""""""""""""""""""""""""""""""""""
"  => Utils
""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()

" Map F3 to echo the current date and time
map <F3> :echo 'Current time is ' . strftime('%c')<CR>


" create and close new tabls
nnoremap <F1> :tabnew<CR>
nnoremap <F2> :tabclose<CR>

"""""""""""""""""""""""""""""""""""""""
" NERD TREE
"""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
