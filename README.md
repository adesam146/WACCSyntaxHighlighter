# WACCSyntaxHighlighter
A Vim syntax highlighting for the WACC language. WACC is a language for which second-year computing students have to write a compiler for.

SETUP
To set this up you need to copy the following two lines into you .vimrc file <br />
au BufRead,BufNewFile *.wacc set filetype=wacc <br />
au! Syntax wacc source <path for the wacc.vim file> <br />

ALTERNATIVE
If you place "wacc.vim" file in ~/.vim/syntax/ then you shouldn't need the second 
line in .vimrc.
Also if you copy the first line into a new file ending in .vim and place it into
~/.vim/ftdetect/ then you also shouldn't need it in the .vimrc

FOR ANYONE WHO WANTS TO IMPROVE ON THIS (please do!, it was put together over a very short period), I strongly recommend these sites:
http://learnvimscriptthehardway.stevelosh.com/chapters/45.html
https://robots.thoughtbot.com/writing-vim-syntax-plugins
I am sure there are many others as well.

MENTIONS..
Thanks to Erkin (My team member for the WACC Complier project), who suggested the idea (though sarcastically).
