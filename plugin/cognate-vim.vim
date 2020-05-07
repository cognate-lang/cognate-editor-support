" Cognate systax highlighting
augroup cog
  " Symbols
  autocmd VimEnter *.cog call matchadd('Operator', '.')
  " Informal
  autocmd VimEnter *.cog call matchadd('Comment', '[a-z]\w\+')
  autocmd VimEnter *.cog call matchadd('Comment', '[a-z]')
  " Formal
  autocmd VimEnter *.cog call matchadd('Function', '[A-Z][a-z]\+')
  autocmd VimEnter *.cog call matchadd('Function', '[A-Z]')
  " Numbers
  autocmd VimEnter *.cog call matchadd('Number', '[0-9]')
  autocmd VimEnter *.cog call matchadd('Number', '\.')
  " Strings
  autocmd VimEnter *.cog call matchadd('String', '".*"')
  autocmd VimEnter *.cog call matchadd('String', '''.''')
 " Brackets
  autocmd VimEnter *.cog call matchadd('Comment', '\[')
  autocmd VimEnter *.cog call matchadd('Comment', '\]')
  autocmd VimEnter *.cog call matchadd('Comment', ')')
  autocmd VimEnter *.cog call matchadd('Comment', '(')
  autocmd VimEnter *.cog call matchadd('Comment', '{')
  autocmd VimEnter *.cog call matchadd('Comment', '}')
  " Special stuff
  autocmd VimEnter *.cog call matchadd('Define', 'Let')
  autocmd VimEnter *.cog call matchadd('Define', 'Define')
  autocmd VimEnter *.cog call matchadd('Define', 'Set')
  autocmd VimEnter *.cog call matchadd('Define', 'Where')
  " Booleans
  autocmd VimEnter *.cog call matchadd('Boolean', 'True')
  autocmd VimEnter *.cog call matchadd('Boolean', 'False')
  autocmd VimEnter *.cog call matchadd('Boolean', 'Either')
  autocmd VimEnter *.cog call matchadd('Boolean', 'Not')
  autocmd VimEnter *.cog call matchadd('Boolean', 'Both')
  " Branch statements
  autocmd VimEnter *.cog call matchadd('Conditional', 'If')
  autocmd VimEnter *.cog call matchadd('Conditional', 'When')
  " Comments
  autocmd VimEnter *.cog call matchadd('Comment', '\~\_.\{-}\~')
  autocmd VimEnter *.cog call matchadd('Comment', '\~')
  autocmd VimEnter *.cog call matchadd('Comment', '\~\~.*') " I hate regex!
augroup END
