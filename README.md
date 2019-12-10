# <p align="center"> :dolphin: vimrcS :whale2: </p>
  
Based on amix's vimrc.

For the beauty of simplicity and purity.

S means hope, btw...

-----


* [Install The Complete Version](#install-the-complete-version)
* [Install Basic vimrc](#install-basic-vimrc)
* [Uninstall](#uninstall)
* [Cheat Sheet](./cheat_sheet/)


## Install The Complete Version
The complete version includes lots of great plugins, configurations and color schemes. Thanks to all the excellent nerds for making it such a handy and amazing tool~ 

	git clone --recursive --depth 1 https://github.com/yinsyim/vimrcS.git ~/.vimrcS
	sh ~/.vimrcS/install_vimrcS.sh


## Install Basic vimrc
The basic version just does the basic setting to make it easy to use in most conditions. It keeps vim as a pure text editor without plugins or other configurations. Do the following to install:
    
    git clone --depth 1 https://github.com/yinsyim/vimrcS.git ~/.vimrcS
	sh ~/.vimrcS/install_vimrc_basic.sh


## Uninstall

Just do following:
* Remove `~/.vim_runtime`
* Remove any lines that reference `.vim_runtime` in your `~/.vimrc`
