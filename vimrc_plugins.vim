""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
let s:vimrcS = expand('<sfile>:p:h')."/.."
" call pathogen#infect(s:vimrcS.'/sources_forked/{}')
" call pathogen#infect(s:vimrcS.'/sources_non_forked/{}')
" call pathogen#infect(s:vimrcS.'/pathogen_managed_plugins/{}')
call pathogen#infect(s:vimrcS.'/plugin_submodules/{}')
call pathogen#helptags()

