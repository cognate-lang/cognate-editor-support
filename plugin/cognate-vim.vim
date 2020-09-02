" Cognate systax highlighting
function! HighlightCognate()
  " Informal
  call matchadd('Normal', '.\w\+')
  call matchadd('Normal', '.')
  " Symbols
  call matchadd('Operator', '\_s\*\_s')
  call matchadd('Operator', '\_s+\_s')
  call matchadd('Operator', '\_s-\_s')
  call matchadd('Operator', '\_s=\_s')
  call matchadd('Operator', '\_s>=\_s')
  call matchadd('Operator', '\_s<=\_s')
  call matchadd('Operator', '\_s>\_s')
  call matchadd('Operator', '\_s<\_s')
  call matchadd('Delimiter', ';')
  call matchadd('Delimiter', ',')
  " Brackets
  call matchadd('Normal', '\[')
  call matchadd('Normal', '\]')
  call matchadd('Normal', ')')
  call matchadd('Normal', '(')
  call matchadd('Normal', '{')
  call matchadd('Normal', '}')

  " Formal
  call matchadd('Function', '\<[A-Z][a-z]\+')
  call matchadd('Function', '\_s[A-Z]')
  " Numbers
  call matchadd('Number', '[0-9]')
  call matchadd('Number', '\.[0-9]')
   " Special stuff
  call matchadd('Constant', '\_sLet\_s')
  call matchadd('Define', '\_sSet\_s')
  call matchadd('Structure', '\_sRecord\_s')
  " Booleans
  call matchadd('Boolean', '\_sTrue\_s')
  call matchadd('Boolean', '\_sFalse\_s')
  call matchadd('Boolean', '\_sEither\_s')
  call matchadd('Boolean', '\_sNot\_s')
  call matchadd('Boolean', '\_sBoth\_s')
  " Branch statements
  call matchadd('Conditional', '\_sIf\_s')
  call matchadd('Conditional', '\_sWhen\_s')
  " Comments
  call matchadd('Comment', '\v([\~\~])(.{-})\1')
  call matchadd('Comment', '\~\~.*') " I hate regex!
  " Strings
  call matchadd('String', '\v([''])(.{-})\1')

endfunction

autocmd BufEnter *.cog call HighlightCognate()
