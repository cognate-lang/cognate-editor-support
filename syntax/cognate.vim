let b:current_syntax = "cognate"

hi def link cogInformal  Normal
hi def link cogOperator  Operator
hi def link cogDelimiter Delimiter
hi def link cogBrace     Normal
hi def link cogFunction  Function
hi def link cogNumber    Number 
hi def link cogLet       Constant
hi def link cogSet       Define
hi def link cogRecord    Structure
hi def link cogBoolean   Boolean
hi def link cogBranch    Conditional
hi def link cogComment   Comment
hi def link cogString    String

" Informal
match cogInformal '.\w\+'
match cogInformal '.'
" Symbols
match cogOperator '\<\*\>'
match cogOperator '\<+\>'
match cogOperator '\<-\>'
match cogOperator '\<==\>'
match cogOperator '\<>=\>'
match cogOperator '\<<=\>'
match cogOperator '\<>\>'
match cogOperator '\<<\>'
match cogDelimiter ';'
match cogDelimiter ','
" Brackets
match cogBrace '('
match cogBrace ')'
" Formal
match cogFunction '\<[A-Z]\w*\>'
" Numbers
match cogNumber '\<[0-9]*\>'
match cogNumber '\<\.[0-9]*\>'
match cogNumber '\<[0-9]*\.[0-9]*\>'
  " Special stuff
match cogLet    '\<Let\>'
match cogSet    '\<Set\>'
match cogRecord '\<Record\>'
" Booleans
match cogBoolean '\<True\>'
match cogBoolean '\<False\>'
match cogBoolean '\<Either\>'
match cogBoolean '\<Not\>'
match cogBoolean '\<Both\>'
" Branch statements
match cogBranch '\<If\>'
match cogBranch '\<When\>'
" Comments
match cogComment '\v([\~\~])(.{-})\1'
match cogComment '\~\~.*'
" Strings
match cogString '\v([''])(.{-})\1'
