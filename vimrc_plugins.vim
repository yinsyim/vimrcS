""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
execute pathogen#infect('plugin_submodules/{}')
execute pathogen#infect('plugin_non_submodules/{}')


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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ack
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>a :Ack!<Space>
