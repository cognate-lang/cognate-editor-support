" Cognate systax highlighting
function! HighlightCognate()
  " Informal
  call matchadd('Normal', '.\w\+')
  call matchadd('Normal', '.')
  " Symbols
  call matchadd('Operator', '\<\*\>')
  call matchadd('Operator', '\<+\>')
  call matchadd('Operator', '\<-\>')
  call matchadd('Operator', '\<==\>')
  call matchadd('Operator', '\<>=\>')
  call matchadd('Operator', '\<<=\>')
  call matchadd('Operator', '\<>\>')
  call matchadd('Operator', '\<<\>')
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
  call matchadd('Function', '\<[A-Z].*\>')
  call matchadd('Function', '\<[A-Z]\>')
  " Numbers
  call matchadd('Number', '[0-9]')
  call matchadd('Number', '\.[0-9]')
   " Special stuff
  call matchadd('Constant', '\<Let\>')
  call matchadd('Define', '\<Set\>')
  call matchadd('Structure', '\<Record\>')
  " Booleans
  call matchadd('Boolean', '\<True\>')
  call matchadd('Boolean', '\<False\>')
  call matchadd('Boolean', '\<Either\>')
  call matchadd('Boolean', '\<Not\>')
  call matchadd('Boolean', '\<Both\>')
  " Branch statements
  call matchadd('Conditional', '\<If\>')
  call matchadd('Conditional', '\<When\>')
  " Comments
  call matchadd('Comment', '\v([\~\~])(.{-})\1')
  call matchadd('Comment', '\~\~.*') " I hate regex!
  " Strings
  call matchadd('String', '\v([''])(.{-})\1')

endfunction

autocmd BufEnter *.cog call HighlightCognate()
