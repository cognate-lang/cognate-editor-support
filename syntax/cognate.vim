" Vim syntax file
" Language: Cognate
" Maintainer: Finn Barber
" Latest Revision: 2nd September 2020

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "cognate"

hi def link cogInformal  Normal
hi def link cogOperator  Operator
hi def link cogDelimiter Delimiter
hi def link cogBrace     Bracket
hi def link cogFunction  Function
hi def link cogNumber    Number 
hi def link cogLet       Constant
hi def link cogSet       Define
hi def link cogRecord    Structure
hi def link cogBoolean   Boolean
hi def link cogBranch    Conditional
hi def link cogComment   Comment
hi def link cogTodo      Todo
hi def link cogString    String

" Informal
syn match cogInformal '.\w\+'
syn match cogInformal '.'
" Symbols
syn match cogOperator  '\(\*\|/\|+\|-\|==\|>=\|<=\|>\|<\)' " Hate regex
syn match cogDelimiter ';\|,'
" Brackets
syn match cogBrace '(\|)'
" Formal
syn match cogFunction '\<[A-Z]\w*\>'
" Numbers
syn match cogNumber '[-+]*\d\+\.\d*'
syn match cogNumber '[-+]*\d\+'
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
syn region cogComment start="\~"   end="\~" contains=cogTodo
syn region cogComment start="\~\~" end="$"  contains=cogTodo
" Todo
syn keyword cogTodo contained TODO FIXME
" Strings
syn region cogString start="'" end="'"
