### VSCode, Neovim, Helix, and Emacs (v29+) users should consider [https://github.com/hedyhli/tree-sitter-cognate](https://github.com/hedyhli/tree-sitter-cognate) instead, which is a much more advanced editor plugin.

# Cognate Editor Support
This repository contains plugins to support the [Cognate programming language](https://cognate-lang.github.io) on Vim, Emacs, and VSCode.

## Vim
Vim highlighting for the Cognate programming language.

![Cognate highlighting with the gruvbox theme](screenshots/vim.png?raw=true)

### Installing:
I recommend installing with vim-Plug like this
```
Plug 'stavromuellerbeta/cognate-editor-support'
```
You can also install Cognate-vim using Pathogen
```
cd ~/.vim/bundle
git clone https://github.com/stavromuellerbeta/cognate-editor-support
```
### Delimiters
By default, Cognate-vim does not highlight delimiters (commas and semicolons). Since these are very important syntax elements in Cognate, you may want to highlight them in bold or inversed colours like this:
```
hi cogDelimiter cterm=bold
hi cogDelimiter cterm=inverse
```

## Emacs
Emacs mode for the Cognate programming language, adding syntax highlighting.

![Cognate highlighting with the Base16-default-dark theme](./screenshots/emacs.png?raw=true)

## VSCode

Visual Studio Code highlighting for the Cognate programming language.

![Cognate highlighting with the Monokai theme](./screenshots/vscode.png?raw=true)
