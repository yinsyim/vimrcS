# perun.vim

Neovim (Vim GUI only) colorscheme based on the default `desert.vim`.

![VIM](https://raw.githubusercontent.com/aradunovic/perun.vim/master/screenshots/vim.png)

## Installation

### With package manager

```viml
" vim-plug
Plug 'aradunovic/perun.vim'

" NeoBundle
NeoBundle 'aradunovic/perun.vim'

" Vundle
Plugin 'aradunovic/perun.vim'
```

### Manually

Place `colors/perun.vim` in your `<vim-config-dir>/colors/` directory.

### Set colorscheme
```viml
colorscheme perun

" neovim
set termguicolors
```

**NOTE:** Ensure that your terminal emulator supports true color. - [More info](https://github.com/neovim/neovim/wiki/FAQ#how-can-i-use-true-color-in-the-terminal)

## Compatibility

perun.vim has been tested on Neovim >= v0.2.2.

## Terminal colors

Take a look inside [`terminal`](https://github.com/aradunovic/perun.vim/tree/master/terminal) directory.

## Screenshots

**Font:** InconsolataGO Nerd Font Complete

**Plugins:**
* vim-devicons
* nerdtree
* vim-airline (with `bubblegum` theme and powerline fonts)

### Ruby

![Ruby](https://raw.githubusercontent.com/aradunovic/perun.vim/master/screenshots/ruby.png)

### CSS

![CSS](https://raw.githubusercontent.com/aradunovic/perun.vim/master/screenshots/css.png)

## Code of Conduct

Everyone interacting in the  project’s codebases and issue trackers is expected
to follow the
[code of conduct](https://github.com/aradunovic/perun.vim/blob/master/CODE_OF_CONDUCT.md).

## License

The code is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT).
