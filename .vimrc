""""""""""""""""""""""""""""""""""""""""""""
" Author:
"    Todor Mitev
"    siper92@gmail.com
"  
" Version:
"    1.0 -> 28.12.2014
" 
" Sections:
"    1. Generali
"    2. Utils
"
"""""""""""""""""""""""""""""""""""""""""""
" Keys:
" 	<C -> ctrl key
" 	<M -> alt
"
"""""""""""""""""""""""""""""""""""""""""""


" 1) General 
 
" Enable line numbers
set nu
" Change mouse mode or something like that!
" set mouse=a 
" toggle paste mode, make it easy to past text in vim
set pastetoggle=<C-p>
 
" <C-s> not working because it's a terinal command
map <C-c> :w!<CR>
" save file while in insert mode and then go back to inset mode (i)
imap <C-c> <ESC>:w!<CR>i

" Map Alt+space to insert mode, 
" use nmap because we need to be in normal mode to do it
map <M-Space> i  
imap <M-Space> <ESC>  

" Exit with no save
map <Tab>/ :q!<CR>

" map search to Ctrl-F
map <C-f> :/

" ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

"""""""""""""""""""""""""""""""""""""""""
"  => Utils
""""""""""""""""""""""""""""""""""""""""
" Map F3 to echo the current date and time
map <F3> :echo 'Current time is ' . strftime('%c')<CR>

" set leader button
:let mapleader = ","

" create and close new tabls
nnoremap <F1> :tabnew<CR>
nnoremap <F2> :tabclose<CR>
nnoremap <S-z> gT
nnoremap <S-x> gt

" call pathogen#infect()
" call pathogen#helptags()

