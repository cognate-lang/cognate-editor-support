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
By default, Cognate-vim does not highlight delimiters (commas and semicolons). Since these are very important syntax elements in Cognate, you may want to highlight them in bold or inversed colours like this:
```
hi cogDelimiter cterm=bold
hi cogDelimiter cterm=inverse
