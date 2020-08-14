# nonu.vim

For some filetypes, line number doesn't make sense and they're just there
taking space without any purpose.

This plugin let you easily hide line number for all specified filetypes.

## Example

```vim
let g:nonu_filetypes = ['git', 'gitcommit', 'fzf', 'fugitive']
```

After that, when you open any of those filetypes, line number will be hidden
by default.

## Installation

Install using any vim plugin manager, or with vim-plug:

```vim
Plug 'pirey/nonu.vim'
```

Then run `:PlugInstall`

## License

Copyright (c) Pirey.  Distributed under the same terms as Vim itself.
See `:help license`.
