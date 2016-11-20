"Vim color file
 "Maintainer:  Johannes Müller <johannes @ t-beutel.com> 
 "Last Change:  13 June 14
 "URL:	

let g:colors_name = "tscho"

hi clear
if exists("syntax_on")
	  syntax reset
endif

set linespace=3

" Syntax Highlighting
hi Normal 	ctermfg=white	ctermbg=black
hi LineNr	ctermfg=lightgray  
hi Search	ctermfg=red

" ###########
" ## Spell ##
" ###########
hi SpellBad	cterm=none	ctermbg=1	ctermfg=15
hi SpellCap	cterm=none	ctermbg=4	ctermfg=black
hi SpellRare	cterm=none	ctermbg=4	ctermfg=black
hi SpellLocal	cterm=none	ctermbg=4	ctermfg=black

" ###########
" ## Error ##
" ###########
hi ErrorMsg	ctermfg=red	ctermbg=black
hi Error	ctermfg=red 	ctermbg=black

" ##########
" ## Diff ##
" ########## 
hi DiffAdd	cterm=bold	ctermbg=2	ctermfg=15
hi DiffChange	cterm=bold	ctermbg=4	ctermfg=15
hi DiffDelete	cterm=bold	ctermbg=1	ctermfg=15
hi DiffText	cterm=bold	ctermbg=3	ctermfg=8

" #########################
" ## Syntax Highlighting ##
" #########################

hi Keyword	cterm=none	ctermbg=none	ctermfg=7
hi Comment	cterm=none	ctermbg=none	ctermfg=144
hi Delimiter	cterm=none	ctermbg=none	ctermfg=7
hi Identifier	cterm=none	ctermbg=none	ctermfg=9
hi Structure	cterm=none	ctermbg=none	ctermfg=7
hi Constant	cterm=none	ctermbg=none	ctermfg=172
hi PreProc	cterm=none	ctermbg=none	ctermfg=7
hi Type		cterm=none	ctermbg=none	ctermfg=7
hi Statement	cterm=none	ctermbg=none	ctermfg=20
hi Special	cterm=none	ctermbg=none	ctermfg=75
hi String	cterm=none	ctermbg=none	ctermfg=33
hi Number	cterm=none	ctermbg=none	ctermfg=172
hi Function	cterm=none	ctermbg=none	ctermfg=172
hi Underlined	cterm=none	ctermbg=none	ctermfg=129
hi Symbol	cterm=none	ctermbg=none	ctermfg=70
hi Method	cterm=none	ctermbg=none	ctermfg=172
hi Interpolation	cterm=none	ctermbg=none	ctermfg=7

" Erlang
hi link erlangAtom            Keyword
hi link erlangBitType         Keyword
