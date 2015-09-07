" Author: 'Christopher MCA'
" Site: https:/github.com/christophermca/meta5
" Version:      0.9.0

"Note: a TRON inspired theme

highlight clear
if exists("syntax_on")
  syntax reset
endif

set background=dark
let colors_name = "meta5"

" Vim >= 7.0 specific colors
if version >= 700
  hi iCursor      guifg=#000000 guibg=#d0d0d0 ctermfg=0 ctermbg=252
  hi CursorLine   guibg=#1c1c1c gui=NONE ctermbg=234 cterm=NONE
  hi CursorColumn guifg=#ffffff guibg=#303030 ctermbg=238
  hi MatchParen   guifg=#ffaf00 guibg=NONE gui=bold ctermfg=214 ctermbg=NONE cterm=bold
  hi Pmenu        guifg=#eeeeee guibg=#444444 ctermfg=255 ctermbg=238
  hi PmenuSel     guifg=#000000 guibg=#df8700 ctermfg=0 ctermbg=172
  hi search       guifg=#ff00ff guibg=NONE gui=underline ctermfg=201 ctermbg=NONE cterm=underline
  hi Incsearch    guifg=#ff00ff guibg=NONE gui=underline ctermfg=201 ctermbg=NONE cterm=underline
endif

" General colors
hi Cursor         guifg=#000000 guibg=#d0d0d0 ctermfg=0 ctermbg=252
hi NonText        guifg=#5f5fff ctermfg=63
hi Normal         guifg=#bcbcbc guibg=#121212 ctermfg=250 ctermbg=233
hi LineNr         guifg=#808080 guibg=NONE ctermfg=244 ctermbg=NONE
hi StatusLine     guifg=#080808 guibg=#9e9e9e ctermfg=232 ctermbg=247
hi StatusLineNC   guifg=#080808 guifg=#585858 ctermfg=232 ctermbg=240
hi VertSplit      guifg=#444444 guibg=#585858 ctermfg=238 ctermbg=240
hi Folded         guifg=#a8a8a8 guibg=#000080 ctermfg=248 ctermbg=4
hi Title          guifg=#df8700 ctermfg=172
hi Visual         guifg=#afffff guibg=#4e4e4e gui=bold ctermfg=159 ctermbg=239 cterm=bold
hi SpecialKey     guifg=#808080 ctermfg=244 guibg=NONE ctermbg=NONE

" Syntax highlighting
hi Comment        guifg=#808080 ctermfg=244
hi Todo           guifg=#008080 guibg=#4e4e4e gui=bold ctermfg=6 ctermbg=239 cterm=bold
hi Boolean        guifg=#87ff5f gui=bold ctermfg=119 cterm=bold
hi Conditional    guifg=#5fdfff ctermfg=81
hi String         guifg=#0087df ctermfg=32
hi Character      guifg=#0087ff ctermfg=33
hi Identifier     guifg=#00afff ctermfg=39
hi Function       guifg=#df8700 ctermfg=172
hi Type           guifg=#87dfff ctermfg=117
hi Typedef        guifg=#87dfff gui=bold ctermfg=117 cterm=bold
hi StorageClass   guifg=#87ff5f ctermfg=119
hi Structure      guifg=#01dfdf ctermfg=44
hi Label          guifg=#5f87ff ctermfg=69
hi Statement      guifg=#5fdfff ctermfg=81
hi Repeat         guifg=#afdfff gui=bold ctermfg=153 cterm=bold
hi Exception      guifg=#afdfff gui=bold ctermfg=153 cterm=bold
hi Operator       guifg=#8787ff ctermfg=105
hi Keyword        guifg=#dfffff guibg=NONE gui=bold ctermfg=195 ctermbg=NONE  cterm=bold
hi Constant       guifg=#af5fff ctermfg=195
hi Number         guifg=#5fdf5f ctermfg=77
hi Special        guifg=#5fdf5f gui=bold ctermfg=77 cterm=bold
hi PreCondit      guifg=#005faf ctermfg=25
hi PreProc        guifg=#00afff ctermfg=39
hi Define         guifg=#ff8700 ctermfg=208

hi javaTypedef    guifg=#87ff5f ctermfg=129

"diff
hi DiffAdd        cterm=NONE ctermfg=46 ctermbg=22 gui=NONE guifg=#00ff00 guibg=#005f00
hi DiffDelete     cterm=NONE ctermfg=160 ctermbg=52 gui=NONE guifg=#df0000 guibg=#5f0000
hi DiffChange     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi difftext       cterm=bold ctermfg=NONE ctermbg=20 gui=bold guifg=NONE guibg=#0000df

"spell
hi spellBad       guifg=#FF0000 guibg=#585858 ctermfg=2 ctermbg=240 cterm=underline
hi spellCap       guifg=#008700 guibg=#585858 ctermfg=28  ctermbg=240 cterm=underline
hi spellRare      guifg=#800080 guibg=#585858 ctermfg=5 ctermbg=240 cterm=underline
hi spelllocal     guifg=#0000df guibg=#585858 ctermfg=20 ctermbg=240 cterm=underline
