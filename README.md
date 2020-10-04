# cognate-vim
Vim highlighting for the Cognate programming language.

![Cognate highlighting with the Molokai theme](screenshot.png?raw=true)

### Installing:
I recommend installing with vim-Plug like this
```
Plug 'stavromuellerbeta/cognate-vim'
```
You can also install Cognate-vim using Pathogen
```
cd ~/.vim/bundle
git clone https://github.com/stavromuellerbeta/cognate-vim
```
### Delimiters
By default, Cognate-vim makes delimiters (semicolons and commas) bold. This is to make debugging missing-semicolons easier. If you want to make delimiters even more obvious, add ```hi cogDelimiter cterm=bold,inverse``` to your vimrc.

### Known Bugs:
- Operators inside function names are highlighted as operators.
