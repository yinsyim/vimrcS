"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show line number
set nu

" set <leader>
let g:mapleader=';'
" move cursor 10 lines
noremap ( 10k
noremap ) 10j
" roll screen 10 lines
noremap 9 10<C-y>
noremap 0 10<C-e>
" start a new line in insert mode
inoremap <C-o> <End><CR>
" move cursor to the end of line in insert mode
inoremap <C-a> <End>
" move cursor to the start of line in insert mode
inoremap <C-i> <Home>
" set paste and nopaste
nnoremap <leader>p :set paste<CR>
nnoremap <leader>np :set nopaste<CR>
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
" move cursor to two ends of line
noremap 3 ^
noremap 4 $
" edit my_configs.vim
nnoremap <leader>mc :e /root/.vim_runtime/my_configs.vim<CR>
" open NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
" leave 7 lines on the top and at the bottom when scroll
set scrolloff=7

