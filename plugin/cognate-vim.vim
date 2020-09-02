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
  call matchadd('Function', '[A-Z][a-z]\+')
  call matchadd('Function', '[A-Z]')
  " Numbers
  call matchadd('Number', '[0-9]')
  call matchadd('Number', '\.[0-9]')
   " Special stuff
  call matchadd('Constant', 'Let')
  call matchadd('Constant', 'Define')
  call matchadd('Define', 'Set')
  call matchadd('Define', 'Redefine')
  call matchadd('Structure', 'Record')
  call matchadd('Structure', 'Field')
  " Booleans
  call matchadd('Boolean', 'True')
  call matchadd('Boolean', 'False')
  call matchadd('Boolean', 'Either')
  call matchadd('Boolean', 'Not')
  call matchadd('Boolean', 'Both')
  " Branch statements
  call matchadd('Conditional', 'If')
  call matchadd('Conditional', 'When')
  " Comments
  call matchadd('Comment', '\~\_.\{-}\~')
  call matchadd('Comment', '\~')
  call matchadd('Comment', '\~\~.*') " I hate regex!
  " Strings
  call matchadd('String', '/"[^"]+"/')

endfunction

autocmd BufEnter *.cog call HighlightCognate()
