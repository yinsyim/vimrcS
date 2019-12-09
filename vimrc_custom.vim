"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set <leader>
let mapleader=";"

" disable mouse
set mouse=""

" move cursor 10 lines
noremap ( 10k
noremap ) 10j

" select all
noremap <leader>a <Esc>ggVG

" start a new line in insert mode
inoremap <C-o> <End><CR>
" move cursor to the end of line in insert mode
inoremap <C-a> <End>
" NOTICE: never ever never map <C-i>, it's the signal of Tab

" close or save current window
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>

" close or save all windows
nnoremap <leader>qa :qa<CR>
nnoremap <leader>wa :wa<CR>
nnoremap <leader>wqa :wqa<CR>

" move cursor one line at the same time when <C-e> and <C-y>
" noremap <C-e> <C-e>j
" noremap <C-y> <C-y>k

" set nohighlight
nnoremap <leader><CR> :noh<CR>

" close the neighbouring window
noremap <leader>j <C-w>j:q<CR>
noremap <leader>k <C-w>k:q<CR>
noremap <leader>h <C-w>h:q<CR>
noremap <leader>l <C-w>l:q<CR>

" edit vimrc_custom.vim
noremap <leader>ev :e ~/.vimrcS/vimrc_custom.vim<CR>

" set paste!
nnoremap <leader>sp :setlocal paste!<CR>
" set wrap!
nnoremap <leader>sw :setlocal wrap!<CR>
" set number!
nnoremap <leader>sn :setlocal number!<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" open Nerdtree
nnoremap <leader>n :NERDTreeToggle<CR>

" open a Nerdtree automatically when vim starts up if no files were specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

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
let g:pymode_lint_checkers = ["pylint"]
" let g:pymode_lint_checkers = ["pep8"]
let g:pymode_rope_lookup_project = 0
let g:pymode_folding = 0
let g:pymode_options_max_line_length = 256
let g:pymode_lint_signs = 0

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

hi Normal guibg=NONE ctermbg=NONE

" set background=dark
" set background=light

" -----solarized-----
let g:solarized_termcolors=256
syntax enable
" set background=dark
set background=light
colorscheme solarized
" -----gruvbox-----
" set background=dark
" set background=light
" colorscheme gruvbox
" -----candid.vim-----
" set termguicolors
" set background=dark
" syntax on
" colorscheme candid
" -----darcula-----
" colorscheme darcula
" -----
" colorscheme darkness
" -----forest night-----
" set termguicolors
" colorscheme forest-night
" -----
" colorscheme typewriter
" -----
" set termguicolors
" colorscheme perun
" -----
" set termguicolors
" colorscheme sacredforest
" -----
" set background=light
" colorscheme beelzebub
" -----
" colorscheme yui
" -----
" set termguicolors
" colorscheme strawberry-light
" colorscheme strawberry-dark
" -----
" set termguicolors
" colorscheme velenjak
" -----
" set t_Co=256
" set termguicolors

" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" set background=dark    " Setting dark mode
" colorscheme deus
" let g:deus_termcolors=256
" -----
" set background=light
" set background=dark
" colorscheme solarized8
" -----
" set termguicolors
" colorscheme base16-default-dark
" -----
" set termguicolors
" colorscheme desert-night
" -----
" colorscheme yin
" -----
" colorscheme yang
" -----
" set termguicolors
" set background=light
" set background=dark
" colorscheme snow
" -----
" colorscheme nofrils-dark
" colorscheme nofrils-light
" colorscheme nofrils-sepia
" colorscheme nofrils-acme

" -----Builtin-----
" set termguicolors
" colorscheme zellner
" colorscheme delek
" colorscheme desert
" colorscheme default


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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MRU
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <leader>m :MRU<CR>
let MRU_Auto_Close = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Undotree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>u :UndotreeToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => nerdcommenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
