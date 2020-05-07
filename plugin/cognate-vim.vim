" Cognate systax highlighting
function! HighlightCognate()
  " Informal
  call matchadd('Comment', '.\w\+')
  call matchadd('Comment', '.')
  " Symbols
  call matchadd('Operator', '\_s\*\_s')
  call matchadd('Operator', '\_s\+\_s')
  call matchadd('Operator', '\_s-\_s')
  call matchadd('Operator', '\_s=\_s')
  call matchadd('Operator', '\_s>=\_s')
  call matchadd('Operator', '\_s<=\_s')
  call matchadd('Operator', '\_s>\_s')
  call matchadd('Operator', '\_s<\_s')
  call matchadd('Operator', ';')
  " Formal
  call matchadd('Function', '[A-Z][a-z]\+')
  call matchadd('Function', '[A-Z]')
  " Numbers
  call matchadd('Number', '[0-9]')
  call matchadd('Number', '\.[0-9]')
  " Strings
  call matchadd('String', '".*"')
  call matchadd('String', '''.''')
 " Brackets
  call matchadd('Normal', '\[')
  call matchadd('Normal', '\]')
  call matchadd('Normal', ')')
  call matchadd('Normal', '(')
  call matchadd('Normal', '{')
  call matchadd('Normal', '}')
  " Special stuff
  call matchadd('Define', 'Let')
  call matchadd('Define', 'Define')
  call matchadd('Define', 'Set')
  call matchadd('Define', 'Where')
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
endfunction

autocmd VimEnter *.cog call HighlightCognate()
