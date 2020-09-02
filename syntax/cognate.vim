" Vim syntax file
" Language: Cognate
" Maintainer: Finn Barber
" Latest Revision: 2nd Spetember 2020

if exists("b:current_syntax")
  finish
endif

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
syn match cogInformal '.\w\+'
syn match cogInformal '.'
" Symbols
syn match cogOperator '\<\*\>'
syn match cogOperator '\<+\>'
syn match cogOperator '\<-\>'
syn match cogOperator '\<==\>'
syn match cogOperator '\<>=\>'
syn match cogOperator '\<<=\>'
syn match cogOperator '\<>\>'
syn match cogOperator '\<<\>'
syn match cogDelimiter ';'
syn match cogDelimiter ','
" Brackets
syn match cogBrace '('
syn match cogBrace ')'
" Formal
syn match cogFunction '\<[A-Z]\w*\>'
" Numbers
syn match cogNumber '[-+]\d\+\.\d*'
" Special stuff
syn match cogLet    '\<Let\>'
syn match cogSet    '\<Set\>'
syn match cogRecord '\<Record\>'
" Booleans
syn match cogBoolean '\<True\>'
syn match cogBoolean '\<False\>'
syn match cogBoolean '\<Either\>'
syn match cogBoolean '\<Not\>'
syn match cogBoolean '\<Both\>'
" Branch statements
syn match cogBranch '\<If\>'
syn match cogBranch '\<When\>'
" Comments
syn match cogComment '\v([\~\~])(.{-})\1'
syn match cogComment '\~\~.*'
" Strings
syn region cogString start=''' end=''' contained
