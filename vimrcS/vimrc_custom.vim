"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" disable mouse
set mouse=""

" move cursor 10 lines
" noremap ( 10k
" noremap ) 10j
noremap ( 10k
noremap ) 10j

" indent
nnoremap <Tab> v>
nnoremap <S-Tab> v<
vnoremap <Tab> >
vnoremap <S-Tab> <

" select all
nnoremap <leader>a <Esc>ggVG

" start a new line in insert mode
inoremap <C-o> <End><CR>

" move cursor to the end of line
" NOTICE: never ever never map <C-i>, it's the signal of Tab
" noremap <C-a> ^
noremap ' ^
inoremap <C-a> <Esc>I
" move cursor to the end of line
" noremap <C-e> $
noremap " $
inoremap <C-e> <Esc>A

" close or save current window
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader><CR> :wqa<CR>

" close or save all windows
nnoremap <leader>qa :qa<CR>
nnoremap <leader>wa :wa<CR>
nnoremap <leader>wqa :wqa<CR>

" move cursor one line at the same time when <C-e> and <C-y>
" noremap <C-e> <C-e>j
" noremap <C-y> <C-y>k

" set nohighlight
nnoremap <leader><Space> :noh<CR>

" close the neighbouring window
noremap <leader>j <C-w>j:q<CR>
noremap <leader>k <C-w>k:q<CR>
noremap <leader>h <C-w>h:q<CR>
noremap <leader>l <C-w>l:q<CR>

" edit vimrc_custom.vim
noremap <leader>ev :e ~/.vimrcS/vimrc_custom.vim<CR>

" set paste!
nnoremap <leader>p :setlocal paste!<CR>
nnoremap <leader>sp :setlocal paste!<CR>
" set wrap!
nnoremap <leader>sw :setlocal wrap!<CR>
" set number!
nnoremap <leader>sn :setlocal number!<CR>
