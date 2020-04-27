"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" disable mouse
set mouse=""

" move cursor 10 lines
noremap ( 10k
noremap ) 10j

" select all
" noremap <leader>a <Esc>ggVG
nnoremap <C-a> <Esc>ggVG

" start a new line in insert mode
inoremap <C-o> <End><CR>
" move cursor to the end of line in insert mode
inoremap <C-a> <End>
" NOTICE: never ever never map <C-i>, it's the signal of Tab

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => color-scheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ----- General Settings -----
set termguicolors
" set background=dark
" set background=light

" ----- Builtin -----
" colorscheme zellner
" colorscheme delek
" colorscheme desert
" colorscheme default

" ----- Installed -----
" colorscheme blackdust
" colorscheme BusyBee
" colorscheme corporation
" colorscheme dimgreens
" colorscheme herald
" colorscheme inkpot
" colorscheme jellybeans
" colorscheme SolarizedDark
" colorscheme green
" colorscheme greenvision
" colorscheme mono_red
" colorscheme fogbell
" colorscheme fogbell_light
" colorscheme fogbell_lite
" colorscheme corvine
" colorscheme corvine_light
" colorscheme bluewery
colorscheme bluewery-light
" colorscheme synthwave84
" colorscheme panic
" colorscheme defminus
" colorscheme biogoo
" colorscheme norwaytoday
" colorscheme xterm16
" colorscheme onedark
" colorscheme darcula
" colorscheme darkness
" colorscheme forest-night
" colorscheme typewriter
" colorscheme typewriter-night
" colorscheme perun
" colorscheme sacredforest
" colorscheme beelzebub
" colorscheme yui
" colorscheme strawberry-light
" colorscheme strawberry-dark
" colorscheme velenjak
" colorscheme solarized8
" colorscheme solarized8_flat
" colorscheme solarized8_high
" colorscheme solarized8_low
" colorscheme base16-default-dark
" colorscheme desert-night
" colorscheme yin
" colorscheme yang
" colorscheme snow
" colorscheme nofrils-dark
" colorscheme nofrils-light
" colorscheme nofrils-sepia
" colorscheme nofrils-acme
" colorscheme candid
" colorscheme gruvbox
" colorscheme deus
