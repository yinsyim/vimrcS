#!/bin/sh
  
set -e

cd ~/.vimrcS

echo "set runtimepath+=~/.vimrcS

source ~/.vimrcS/vimrc_basic.vim
source ~/.vimrcS/vimrc_filetypes.vim
source ~/.vimrcS/vimrc_plugins.vim
source ~/.vimrcS/vimrc_extended.vim

try
source ~/.vimrcS/vimrc_custom.vim
catch
endtry" >> ~/.vimrc

echo "Install vimrcS successfully."

