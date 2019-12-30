"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
nnoremap <leader>p :setlocal paste!<CR>
nnoremap <leader>sp :setlocal paste!<CR>
" set wrap!
nnoremap <leader>sw :setlocal wrap!<CR>
" set number!
nnoremap <leader>sn :setlocal number!<CR>


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


