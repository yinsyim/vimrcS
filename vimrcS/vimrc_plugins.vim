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
" => Better Rainbow Parentheses
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadChevrons

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MRU
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <leader>m :MRU<CR>
let MRU_Auto_Close = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Goyo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <leader>g :Goyo<CR>
let g:goyo_width = 120
let g:goyo_height = 90
let g:goyo_linenr = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_auto_hover = ''
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
nnoremap <leader>y :YcmRestartServer<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_autosave = 1
let g:go_imports_autosave = 1
let g:go_fmt_command = 'gofmt'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_completion_autoimport = 0
let g:ale_hover_cursor = 0
let g:ale_hover_to_preview = 0
let g:ale_linters = {'go': []}


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-autopep8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
let g:autopep8_max_line_length=180
let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => auto-pairs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:AutoPairsMapCR = 0
let g:AutoPairsCenterLine = 0
