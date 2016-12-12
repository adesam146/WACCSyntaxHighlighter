# WACCSyntaxHighlighter
A Vim syntax hightlighting for the WACC language. WACC is a language for which second year computing students have to write a complier for.

SETUP
To set this up you need to copy the following two lines into you .vimrc file
au BufRead,BufNewFile *.wacc set filetype=wacc
au! Syntax wacc source <path for the wacc.vim file>

ALTERNATIVE
If you place "wacc.vim" file in ~/.vim/syntax/ then you shouldn't need the second 
line in .vimrc.
Also if you copy the first line into a new file ending in .vim and place it into
~/.vim/ftdetect/ then you also shouldn't need it in the .vimrc
