# <p align="center"> :apple: vimrc cheat sheet :green_apple: </p>


This is the cheat sheet of my vimrc. I put the short content just here, and for the
long ones i link to the original files or pages.


-----

- [Builtin](#builtin):
  - [Useful Builtin Commands](builtin_commands.md)
  - [Vim Setting Commands](#vim-setting-commands)

- [Plugins](#plugins):
  - [Nerdtree](#nerdtree)

- [Others](#others):
  - [Other Useful Skills](#other-useful-skills)
  - [References](#references)



## Builtin

### Vim Setting Commands

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


## Plugins

### Nerdtree

Here are some frequently used commands:

| Command | Function |
| ------ | -------- |
| m  |  open the menu |
| `o` or `Enter` | open files, directories, bookmarks |
| `O` | **Recursivly** open the selected directory |
| s  | open a file in a vertical split window |
| i  | open a file in a horizontal split window |
| t  | open a file in new tab |
| x  | close the current node parent (unfold current folder) |
| X  | **Recursivly** close the current node parent (unfold folders) |
| R  | refresh |
| cd | change tree root to the selected node/directory |
| CD | change tree root to CWD |
| I  | toggle whether hidden files displayed |
| f  | toggle whether file filters are used |
| F  | toggle whether files are displayed |
| B  | toggle whether bookmark table displayed |
| q  | QUIT nerdtree window |
| A  | zoom in/out nerdtree window |

For complete usage instructions, see [Nerdtree Official Doc](https://github.com/scrooloose/nerdtree/blob/master/doc/NERDTree.txt)



## Others


### Other Useful Skills

#### switch between shell and vim (`ctl-z` + `fg`)

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
