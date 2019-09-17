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
