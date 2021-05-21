""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
execute pathogen#infect('plugins_submodules/{}')
execute pathogen#infect('plugins_non_submodules/{}')


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

" let g:NERDTreeDirArrowExpandable = '+'
" let g:NERDTreeDirArrowCollapsible = '-'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-commentary
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
setlocal commentstring=#\ %s


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => neocomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:neocomplete#enable_at_startup = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => python-mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filetype off
"
" call pathogen#infect()
" call pathogen#helptags()
"
" filetype plugin indent on
" syntax on
"
" let g:pymode_lint_on_write = 1
" " let g:pymode_lint_unmodified = 1
" let g:pymode_lint_on_fly = 0
" let g:pymode_rope = 0
" " let g:pymode_lint_checkers = ["pylint"]
" let g:pymode_lint_checkers = ["pep8"]
" let g:pymode_rope_lookup_project = 0
" let g:pymode_folding = 0
" let g:pymode_options_max_line_length = 256
" let g:pymode_lint_signs = 0
"
" augroup unset_folding_in_insert_mode
"     autocmd!
"     autocmd InsertEnter *.py setlocal foldmethod=marker
"     autocmd InsertLeave *.py setlocal foldmethod=expr
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
filetype plugin on

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
" nnoremap <Leader>a :Ack!<Space>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-autopep8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map it to <F8>
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
" Set maximum allowed line length (default: 79)
let g:autopep8_max_line_length=120
" Automatically format every time saving a file
" let g:autopep8_on_save = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-flake8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" To customize whether the show marks in the file, set g:flake8_show_in_file:
let g:flake8_show_in_file=0
" To customize whether the show signs in the gutter, set g:flake8_show_in_gutter:
let g:flake8_show_in_gutter=0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Better Rainbow Parentheses
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadChevrons

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Better Rainbow Parentheses
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>y :YcmRestartServer<CR>

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_auto_hover = ''
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_key_list_stop_completion = ['<C-y>']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_autosave = 1
