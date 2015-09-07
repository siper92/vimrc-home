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
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``
set pastetoggle=<F2>
set clipboard=unnamed

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
" make backspace behave like normal again
set bs=2

" Bind nohl
" " Removes highlight of your last search
" " ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-]> :nohl<CR>
vnoremap <C-]> :nohl<CR>
inoremap <C-]> :nohl<CR>

" Quick quit command
noremap <Leader>e :quit<CR>  
noremap <Leader>E :qa!<CR>   

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Show whitespace
" " MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Set color mode to 256 colors
set t_Co=256
color behelit

" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on

" Showing line numbers and length
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" Useful settings
set history=700
set undolevels=700

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files - they trigger too many events
" " for file system watchers
set nobackup
set nowritebackup
set noswapfile

" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab
"--------------------------------------------------------------------------------
"		configure editor with tabs and nice stuff...
"--------------------------------------------------------------------------------
"
" make backspaces more powerfull
set backspace=indent,eol,start
set ruler           " show line and column number
set showcmd			" show (partial) command in status line

" don't show documentation popup for vim files automatically
autocmd FileType python setlocal completeopt-=preview

"""""""""""""""""""""""""""""""""""""""""""
" GENEREL KEY BINDINGS  
"""""""""""""""""""""""""""""""""""""""""""

" set leader button
:let mapleader = "\\"
 
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
