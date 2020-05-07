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

### Known Bugs:
- Operators will not be highlighted when not padded with whitespace.
- Pascal case bugs out the highlighting. 'DefineIf' is highlighted as Define and as If.
