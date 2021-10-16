" Vim syntax file
" Language: Cognate
" Maintainer: Finn Barber
" Latest Revision: 2nd October 2021

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "cognate"


hi def link cogImport     Include
hi def link cogInformal   Normal
hi def link cogOperator   Operator
hi def link cogBrace      Bracket
hi def link cogFunction   Function
hi def link cogIO         Special
hi def link cogNumber     Number
hi def link cogVar        Constant
hi def link cogBoolean    Boolean
hi def link cogControl    Conditional
hi def link cogComment    Comment
hi def link cogTodo       Todo
hi def link cogString     String
hi def link cogDelimiter  Normal
hi def link cogSymbol     Keyword

" Informal
syn match cogInformal '.'
" Symbols
syn match cogOperator  '\(\*\|/\|+\|-\|==\|/=\|>=\|<=\|>\|<\)' " Hate regex
syn match cogDelimiter ';'
" Brackets
syn match cogBrace '(\|)'
" Formal
syn match cogFunction '\<[A-Z][A-Za-z0-9?!\-]*'
" Numbers
syn match cogNumber '\<-\?\d\+\.\?\d*'
" Symbol
syn match cogSymbol '\\\<[A-Za-z0-9?!\-]\+'
" Keywords
syn keyword cogVar     Let Define Set
syn keyword cogImport  Import
syn keyword cogIO      Print Put
syn keyword cogBoolean True False
syn keyword cogControl If While Do
" Comments
syn region cogComment start="\~"   end="\~" contains=cogTodo
syn region cogComment start="\~\~" end="$"  contains=cogTodo
" Todo
syn keyword cogTodo contained TODO FIXME
" Strings
syn region cogString start="'" skip="\\'" end="'"
