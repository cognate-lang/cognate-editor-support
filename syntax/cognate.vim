" Informal
match Normal '.\w\+'
match Normal '.'
" Symbols
match Operator '\<\*\>'
match Operator '\<+\>'
match Operator '\<-\>'
match Operator '\<==\>'
match Operator '\<>=\>'
match Operator '\<<=\>'
match Operator '\<>\>'
match Operator '\<<\>'
match Delimiter ';'
match Delimiter '
" Brackets
match Normal ''
match Normal '
" Formal
match Function '\<[A-Z]\w*\>'
" Numbers
match Number '\<[0-9]*\>'
match Number '\<\.[0-9]*\>'
match Number '\<[0-9]*\.[0-9]*\>'
  " Special stuff
match Constant '\<Let\>'
match Define '\<Set\>'
match Structure '\<Record\>'
" Booleans
match Boolean '\<True\>'
match Boolean '\<False\>'
match Boolean '\<Either\>'
match Boolean '\<Not\>'
match Boolean '\<Both\>'
" Branch statements
match Conditional '\<If\>'
match Conditional '\<When\>'
" Comments
match Comment '\v([\~\~])(.{-})\1'
match Comment '\~\~.*'
" Strings
match String '\v([''])(.{-})\1'
