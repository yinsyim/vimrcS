# <p align="center"> vimrc cheat sheet </p>


- [Builtin Commands](#builtin-commands):
    * [Editing Commands](builtin_commands.md)
    * [Setting Commands](#setting-commands)

- [Plugins Related Commands](#plugins-related-commands):
    * [Nerdtree](#nerdtree)
    * [Visual Star Search](#visual-star-search)
    * [MRU](#mru)
    * [Tagbar](#tagbar)
    * [vim-autopep8](#vim-autopep8)
    * [vim-flake8](#vim-flake8)
    * [ctrlp.vim](#ctrlpvim)
    * [Better Rainbow Parentheses](#better-rainbow-parentheses)

- [Other Useful Skills](#other-useful-skills)
    * [Switch Between Shell and Vim (ctl-z + fg)](#switch_between_shell_and_vim)

- [Note](#note)
    * [About \<C-i\> Mapping](#about_<c-i>_mapping)

- [References](#references)



## Builtin Commands

### Setting Commands

1. show settings

    ```shell
    :set all # show all vim settings
    :set     # show the settings you have specifically changed

    :set <option>? # show current value of <option>, e.g. :set list?

    :scriptnames # list all configure files that have been loaded
    ```

1. show absolute/relative line number

    ```shell
    :set number # show line number
    :set relativenumber # show absolute number of current line, and relative
                        # numbers for other lines, easy to jump up/down with <N>j/k
                        # COOL!
    ```

1. List all key bindings

    To show all the key bindins of the current configuration:

    ```shell
    :map

       '2           @/def<Space>
       '1           @/class<Space>
    n  'b          *@:call pymode#breakpoint#operate(line('.'))<CR>
    v  'r          *@:PymodeRun<CR>
    n  'r          *@:PymodeRun<CR>
    o  C           *@:<C-U>call pymode#motion#select('^\s*class\s', 0)<CR>
    F            @:set foldmethod=indent<CR>
    v  K           *@:<C-U>call pymode#doc#show(@*)<CR>
    n  K           *@:call pymode#doc#find()<CR>
    ```

    `n`: normal mode.


## Plugins Related Commands

### [Nerdtree](https://github.com/scrooloose/nerdtree)

`<leader>-n` to toggle Nerdtree.

Here are some frequently used commands:

| Command | Function |
| ------ | -------- |
| `m`  |  open the menu |
| `o` or `Enter` | open files, directories, bookmarks |
| `O` | **Recursivly** open the selected directory |
| `s`  | open a file in a vertical split window |
| `i`  | open a file in a horizontal split window |
| `t`  | open a file in new tab |
| `x`  | close the current node parent (unfold current folder) |
| `X`  | **Recursivly** close the current node parent (unfold folders) |
| `R`  | refresh |
| cd | change tree root to the selected node/directory |
| CD | change tree root to CWD |
| `I`  | toggle whether hidden files displayed |
| f  | toggle whether file filters are used |
| F  | toggle whether files are displayed |
| B  | toggle whether bookmark table displayed |
| `q`  | QUIT nerdtree window |
| A  | zoom in/out nerdtree window |

For complete usage instructions, see [Nerdtree Official Doc](https://github.com/scrooloose/nerdtree/blob/master/doc/NERDTree.txt)


### [Visual Star Search](https://github.com/nelstrom/vim-visual-star-search)

This allows you to select some text using Vim's visual mode and then hit **\*** and **#** to search for it elsewhere in the file.


### [MRU](https://github.com/yegappan/mru)

`<leader>-m` to open MRU.

#### Original
> You can press the 'o' key to open the file name under the cursor in the MRU window in a new window.
> 
> To open a file from the MRU window in read-only mode (view), press the 'v' key.
> 
> To open a file from the MRU window in a new tab, press the 't' key. If the file is already opened in a window in the current or in another tab, then the cursor is moved to that tab. Otherwise, a new tab is opened.
> 
> You can open multiple files from the MRU window by specifying a count before pressing '' or 'v' or 'o' or 't'. You can also visually select multiple filenames and invoke the commands to open the files. Each selected file will be opened in a separate window or tab.
> 
> You can press the 'u' key in the MRU window to update the file list. This is useful if you keep the MRU window open always.
> 
> You can close the MRU window by pressing the 'q' key or using one of the Vim window commands.

#### My Custom Changes
I modify the following source code to change the opening file keys to match with NERDTree.

```vim
 " Create mappings to select and edit a file from the MRU list
 nnoremap <buffer> <silent> o
			 \ :call <SID>MRU_Select_File_Cmd('edit,useopen')<CR>
 vnoremap <buffer> <silent> o
			 \ :call <SID>MRU_Select_File_Cmd('edit,useopen')<CR>
 nnoremap <buffer> <silent> i
			 \ :call <SID>MRU_Select_File_Cmd('edit,newwin_horiz')<CR>
 vnoremap <buffer> <silent> i
			 \ :call <SID>MRU_Select_File_Cmd('edit,newwin_horiz')<CR>
 nnoremap <buffer> <silent> <S-CR>
			 \ :call <SID>MRU_Select_File_Cmd('edit,newwin_horiz')<CR>
 vnoremap <buffer> <silent> <S-CR>
			 \ :call <SID>MRU_Select_File_Cmd('edit,newwin_horiz')<CR>
 nnoremap <buffer> <silent> s
			 \ :call <SID>MRU_Select_File_Cmd('edit,newwin_vert')<CR>
 vnoremap <buffer> <silent> s
			 \ :call <SID>MRU_Select_File_Cmd('edit,newwin_vert')<CR>
```

Now press 'o' to open the file in the whole window, 's' to open in a split horizontal window, 
'i' to open in a split vertical window.

#### User Manual
https://github.com/yegappan/mru/wiki/User-Manual


### [Tagbar](https://github.com/majutsushi/tagbar)
`<leader>-t` to open Tagbar.

The following mappings are valid in the Tagbar window:

```
<CR>/<Enter>  Jump to the tag under the cursor. Doesn't work for pseudo-tags
              or generic headers.
                Map option: tagbar_map_jump
p             Jump to the tag under the cursor, but stay in the Tagbar window.
                Map option: tagbar_map_preview
P             Open the tag in a |preview-window|.
                Map option: tagbar_map_previewwin
o/za          Toggle the fold under the cursor or the current one if there is
              no fold under the cursor.
                Map option: tagbar_map_togglefold
s             Toggle sort order between name and file order.
                Map option: tagbar_map_togglesort
```


### [vim-autopep8](https://github.com/tell-k/vim-autopep8)
call function
```
:Autopep8
```

with arguments
```
:Autopep8 --range 1 5

or

:call Autopep8(" --range 1 5")
```

range selection
```
:'<,'>Autopep8
```


### [vim-flake8](https://github.com/nvie/vim-flake8)
1. Open a Python file
2. Press <F7> to run flake8 on it

It shows the errors inside a quickfix window, which will allow your to quickly jump to the error locations by simply pressing [Enter].

If any of `g:flake8_show_in_gutter` or `g:flake8_show_in_file` are set to 1, call:

```
call flake8#Flake8UnplaceMarkers()
```

To remove all markers. No default mapping is provided.


### [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
* Run `:CtrlP` or `:CtrlP [starting-directory]` to invoke CtrlP in find file mode.
* Run `:CtrlPBuffer` or `:CtrlPMRU` to invoke CtrlP in find buffer or find MRU file mode.
* Run `:CtrlPMixed` to search in Files, Buffers and MRU files at the same time.
Check `:help ctrlp-commands` and `:help ctrlp-extensions` for other commands.

Once CtrlP is open:
* Press `<F5>` to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
* Press `<c-f>` and `<c-b>` to cycle between modes.
* Press `<c-d>` to switch to filename only search instead of full path.
* Press `<c-r>` to switch to regexp mode.
* Use `<c-j>`, `<c-k>` or the arrow keys to navigate the result list.
* Use `<c-t>` or `<c-v>`, `<c-x>` to open the selected entry in a new tab or in a new split.
* Use `<c-n>`, `<c-p>` to select the next/previous string in the prompt's history.
* Use `<c-y>` to create a new file and its parent directories.
* Use `<c-z>` to mark/unmark multiple files and `<c-o>` to open them.
Run `:help ctrlp-mappings` or submit `?` in CtrlP for more mapping help.

* Submit two or more dots `..` to go up the directory tree by one or multiple levels.
* End the input string with a colon `:` followed by a command to execute it on the opening file(s):
Use `:25` to jump to line 25.
Use `:diffthis` when opening multiple files to run `:diffthis` on the first 4 files.


### [Better Rainbow Parentheses](https://github.com/kien/rainbow_parentheses.vim)
```
:RainbowParenthesesToggle       " Toggle it on/off
:RainbowParenthesesLoadRound    " (), the default when toggling
:RainbowParenthesesLoadSquare   " []
:RainbowParenthesesLoadBraces   " {}
:RainbowParenthesesLoadChevrons " <>
```


## Other Useful Skills

<a id="switch_between_shell_and_vim"></a>
### Switch Between Shell and Vim (ctl-z + fg)

If you are doing some code editing, debugging and testing work, i mean,
edit files with vim -> exit vim -> test and run -> edit files again -> exit
vim -> test and run -> ... you don't have to open and close vim again and again.

`fg` (`ctl-z`) and `bg` will save you.

some shell commands:
```shell
$ jobs # shell command, list all background tasks

$ fg             # move last background task to frontground (restore executing)
$ fg % <task_id> # move background task <task_id> to frontground

$ bg             # move task to background
$ bg % <task_id> # move task <task_id> to background
$ ctl-z          # move current task to background
```

so the process can be simplified to: after finishing editing, press `ctrl-z`
to put vim process into background, now you are in shell, do your testing,
and use `fg` to call back your vim again.


## Note

<a id="about_<c-i>_mapping"></a>
### About \<C-i\> Mapping
When I do `inoremap <C-i> <Esc>I` to move cursor to the start of line in insert mode, the **Tab** key
went wrong and works like **<C-i>**. Here's why:  

> Some key combinations, like Ctrl + non-alphabetic cannot be mapped, and Ctrl + letter vs. Ctrl + Shift + letter cannot be distinguished. (Unless your terminal sends a distinct termcap code for it, which most don't.) In insert or command-line mode, try typing the key combination. If nothing happens / is inserted, you cannot use that key combination. This also applies to <Tab> / <C-I>, <CR> / <C-M> / <Esc> / <C-[> etc. (Only exception is <BS> / <C-H>.) 

Reference: https://stackoverflow.com/questions/24967213/vim-mapping-of-c-i-in-insert-mode


## References
- [welcome home : vim online](https://www.vim.org/)
- [VIM: help](http://vimcdoc.sourceforge.net/doc/help.html)
- [【Vim】使用map自定义快捷键 - Jason Ding的专栏 - CSDN博客](https://blog.csdn.net/JasonDing1354/article/details/45372007)
- [语虚: VIM学习笔记 键盘映射 (Map)](http://yyq123.blogspot.com/2010/12/vim-map.html)
- [VIM USER MANUAL - by Bram Moolenaar](http://vimdoc.sourceforge.net/vimum.html)
- [vi Complete Key Binding List](http://hea-www.harvard.edu/~fine/Tech/vi.html)
- [Where Vim Came From](https://twobithistory.org/2018/08/05/where-vim-came-from.html)
- [Learn Vimscript the Hard Way](http://learnvimscriptthehardway.stevelosh.com/)
- [VimConfig - Sane and simple Vim configuration](https://vimconfig.com/)
- [CentOS编译安装Vim让其支持lua](http://aiezu.com/article/110.html)
- [无插件Vim编程技巧](https://mp.weixin.qq.com/s?__biz=MjM5NzA1MTcyMA==&mid=200211176&idx=1&sn=8ef83ebad1938fd03acd424f0c18abb3&scene=2&from=timeline&isappinstalled=0#rd)
- [What Is Your Most Productive Shortcut With Vim](https://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim)
