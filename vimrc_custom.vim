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

" move cursor one line at the same time when <C-e> and <C-y>
noremap <C-e> <C-e>j
noremap <C-y> <C-y>k

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
nnoremap <leader>n :NERDTreeToggle<CR>

" open a Nerdtree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ignore certain files/directories
let NERDTreeIgnore=['\.o$[[file]]', '\.d$[[file]]', '\.pyc', '\~$', '\.swp']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-commentary
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
setlocal commentstring=#\ %s


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => neocomplete
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

let g:pymode_lint_on_write = 1
let g:pymode_lint_unmodified = 1
let g:pymode_lint_on_fly = 0
let g:pymode_rope = 0
" let g:pymode_lint_checkers = ['pylint']
let g:pymode_lint_checkers = ['pep8']
let g:pymode_rope_lookup_project = 0
let g:pymode_folding = 0

" augroup unset_folding_in_insert_mode
" 	autocmd!
" 	autocmd InsertEnter *.py setlocal foldmethod=marker
" 	autocmd InsertLeave *.py setlocal foldmethod=expr
" augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => color-scheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -----General-----
if ! has("gui_running") 
    set t_Co=256 
endif 

let g:solarized_termcolors=256
hi Normal guibg=NONE ctermbg=NONE
" set background=dark
" set background=light

" -----solarized-----
" syntax enable
" set background=dark
" set background=light
" colorscheme solarized

" -----molokai-----
" let g:molokai_original = 1
" let g:rehash256 = 1
" colorscheme molokai

" -----Unified color scheme (default: dark)-----
" colo seoul256

" Light color scheme
" colo seoul256-light

" Switch
" set background=dark
" set background=light

" -----gruvbox-----
colorscheme gruvbox
" set background=dark
" set background=light

" -----Other Colorschemes-----
" colorscheme ron
" colorscheme Tomorrow-Night-Eighties
" colorscheme zellner
" colorscheme peaksea


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Goyo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <leader>g :Goyo<CR>
let g:goyo_width = 120
let g:goyo_height = 90
let g:goyo_linenr = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <leader>t :TagbarToggle<CR>
