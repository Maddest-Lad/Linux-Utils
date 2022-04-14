### `.bashrc`
More or less a standard linux bashrc with a few useful aliases & functions added at the top - Colors are force-enabled cause I like it that way
Notable Features


### `.bash_aliases`

#### Ease of Editing
- `src` sources all relevant bash files (`.bashrc` `.bash_aliases` `.path`)
- `alia` opens up `.bashrc` for editing 

#### Clean Filesystem Operations
- `lc` and `cc` combine `clear` with `ls` and `cd` for a cleaner navigating experience
- `la` just a shortcut for `ls -a'
- `md` is a mkdir with a cd into it after creation
- `up <optional:int>` moves you up 1 directory by default or uses the int you pass it - equivalent to `cd .. ... ....` etc
- `back` returns you to your previous working directory
- `sizeof` uses du to get a human readable size of whatever you point it to 

#### Useful Commands
- `ports` uses netstat to give you every currently open port 
- `sizeof <optional:file/dir>` displays the size of a file or directory, if given no arguments, runs on current dir
- `diskspace` gives you a sorted list of who's taking up the most diskspace
- `back` navigates to your previous working directory

#### History Based
- `hs <int:n>` prints the last n lines of the history file
- `replay <int:n>`
- `save  

# Functions
md () { [ $# = 1 ] && mkdir -p "$@" && cd "$@" || echo "Error - no directory passed!";}
up() { cd $(eval printf '../'%.0s {1..$1}) && pwd;}
s() { sudo $(history -p '!!');}


### `upgrade_nano.sh` 
Uses [Scopatz's](https://github.com/scopatz/nanorc) installer to add more language highlighting to nano
