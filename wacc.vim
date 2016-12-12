if exists("b:current_syntax")
	finish
endif

" To set this up you need to copy the following two lines into you .vimrc file
" au BufRead,BufNewFile *.wacc set filetype=wacc
" au! Syntax wacc source <path for this file>

" ALTERNATIVE
" If you place this file in ~/.vim/syntax/ then you shouldn't need the second 
" line in .vimrc.
" Also if you place the first line in a file ending in .vim and place it in
" ~/.vim/ftdetect/ then you also shouldn't need it in the .vimrc

syntax match waccComment "\v#.*$"
highlight link waccComment Comment


syntax region waccScope start="begin" end="end" fold transparent

syntax keyword waccStat begin end skip read free return exit print println
highlight link waccStat Statement

syntax keyword waccConditional if then else fi
highlight link waccConditional Conditional

syntax keyword waccLoop while do done
highlight link waccLoop Repeat

syntax keyword waccTypes int bool char string pair
highlight link waccTypes Type

syntax keyword waccPair newpair fst snd null
highlight link waccPair Keyword

syntax region funcScope start="is" end="end" fold transparent
syntax keyword waccFunc call is
highlight link waccFunc Function

syntax match waccInt "\vd\+"
syntax match waccInt "\v[-+]\d\+"
highlight link waccInt Number

syntax keyword waccBool true false
highlight link waccBool Boolean

" The skip is to enable the possibility of matching string escape i.e "This is
" \"and example\"!" (note ignore the first " on this line, that's just how 
" comments are made in .vim files
syntax region waccString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link waccString String

" Operators
" Note those defined later have priority over earlier ones, in the sense that
" they would be matched first i.e > against >=

"BinOps
syntax match waccOperator "\*"
syntax match waccOperator "/"
syntax match waccOperator "%"
syntax match waccOperator "+"
syntax match waccOperator "-"
syntax match waccOperator ">"
syntax match waccOperator ">="
syntax match waccOperator "<"
syntax match waccOperator "<="
syntax match waccOperator "!="
syntax match waccOperator "=="
syntax match waccOperator "&&"
syntax match waccOperator "||"

"UnaryOps
syntax keyword waccOperator len ord chr
syntax match waccOperator "!"
highlight link waccOperator Operator

"idents
syntax match waccIdent "[_a-zA-Z][_a-zA-Z0-9]*"
highlight link waccIdent Identifier

"classes
syntax keyword waccClass class
highlight link waccClass Structure

syntax keyword waccAccess public private this
highligh link waccAccess Keyword

let b:current_syntax = "wacc"
