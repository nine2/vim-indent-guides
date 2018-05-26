# Add Copyright for Vim

vim-indent-guides is a plugin for visually displaying indent levels in Vim.

## Installation

Copy the file on your .vim/bundle folder.

### Vundle

```
Bundle "nine2/vim-indent-guides"
```

## Useg

add the config to your .vimrc to set shot key:

```
map <leader>i :call Nine2IndentGuides()<cr>
```

add the config to disable the plugin:

```
let g:nine2_indent_guides_disable = 1
```

use `:Nine2IndentGuides` to enable/disable the indent guides.

## Help
`:help indent-guides`

## Screenshots
![](./plugin/pic.jpg)

