" Cognate systax highlighting
function HighlightCognate()
" Symbols
  matchadd('Operator', '.')
  " Informal
  matchadd('Comment', '.\w\+')
  matchadd('Comment', '.')
  " Formal
  matchadd('Function', '[A-Z][a-z]\+')
  matchadd('Function', '[A-Z]')
  " Numbers
  matchadd('Number', '[0-9]')
  matchadd('Number', '\.')
  " Strings
  matchadd('String', '".*"')
  matchadd('String', '''.''')
 " Brackets
  matchadd('Normal', '\[')
  matchadd('Normal', '\]')
  matchadd('Normal', ')')
  matchadd('Normal', '(')
  matchadd('Normal', '{')
  matchadd('Normal', '}')
  " Symbols
  matchadd('Normal', '\*')
  " Special stuff
  matchadd('Define', 'Let')
  matchadd('Define', 'Define')
  matchadd('Define', 'Set')
  matchadd('Define', 'Where')
  " Booleans
  matchadd('Boolean', 'True')
  matchadd('Boolean', 'False')
  matchadd('Boolean', 'Either')
  matchadd('Boolean', 'Not')
  matchadd('Boolean', 'Both')
  " Branch statements
  matchadd('Conditional', 'If')
  matchadd('Conditional', 'When')
  " Comments
  matchadd('Comment', '\~\_.\{-}\~')
  matchadd('Comment', '\~')
  matchadd('Comment', '\~\~.*') " I hate regex!
endfunction

autocmd VimEnter *.cog call HighlightCognate()
