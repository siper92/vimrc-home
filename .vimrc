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

set autoindent

" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab
"--------------------------------------------------------------------------------
"		configure editor with tabs and nice stuff...
"--------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new
"  line
"
" make backspaces more powerfull
set backspace=indent,eol,start
set ruler           " show line and column number
syntax on			" syntax highlighting
set showcmd			" show (partial) command in status line

" don't show documentation popup for vim files automatically
autocmd FileType python setlocal completeopt-=preview

"""""""""""""""""""""""""""""""""""""""""""
" GENEREL KEY BINDINGS  
"""""""""""""""""""""""""""""""""""""""""""

" set leader button
:let mapleader = "\\"

" Change mouse mode or something like that!
" set mouse=a 
" toggle paste mode, make it easy to past text in vim
set pastetoggle=<C-p>
 
" <C-s> not working because it's a terinal command
" SAVE
map <C-c> :w!<CR>
imap <C-c> <ESC>:w!<CR>i

map <leader>q :wq<CR>
imap <leader>q <ESC>:wq<CR>
vmap <leader>q <ESC>:wq<CR>

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

" Duplicate line
map <C-d> yy p
imap <C-d> <ESC>yy p i
vmap <C-d> <ESC>yy p i

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
