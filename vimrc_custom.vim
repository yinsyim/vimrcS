"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set <leader>
let g:mapleader=';'

" move cursor 10 lines
noremap ( 10k
noremap ) 10j

" start a new line in insert mode
inoremap <C-o> <End><CR>

" close or save current window
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>

" close or save all windows
nnoremap <leader>qa :qa<CR>
nnoremap <leader>wa :wa<CR>
nnoremap <leader>wqa :wqa<CR>

" close the debug message window in python-mode
nmap <leader>j <C-j>:q<CR>

" refresh
nnoremap <leader>e :e<CR>

" set nohighlight
nnoremap <leader>nh :noh<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" open Nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>

" open a Nerdtree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-commentary
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
setlocal commentstring=#\ %s


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-commentary
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neocomplete#enable_at_startup = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => python-mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

let g:pymode_lint_on_write = 0
let g:pymode_lint_on_fly = 0
let g:pymode_rope = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => color-scheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General

set t_Co=256 " required
set background=dark
" set background=light
hi Normal guibg=NONE ctermbg=NONE
" -----
" solarized

" syntax enable
" set background=dark
" set background=light
" colorscheme solarized
" -----
" colorscheme

" colorscheme ron
" colorscheme Tomorrow-Night-Eighties
colorscheme zellner

