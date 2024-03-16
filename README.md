### Install Command
`curl https://raw.githubusercontent.com/Maddest-Lad/Linux-Utils/main/install.sh | sh`

### `.bashrc`
An archetypal bashrc with a few useful aliases & functions added at the top, colors are enabled for most commands.

### `.path`
file to house all of my export path and echo eval commands so that they're easily accessible and I can append to the file without concern for organization
- `path <optional:directory>` adds the folder to `~/.path` and sources it in the current context, calling without an argument adds the $PWD to PATH

### `.bash_aliases`

#### Ease of Editing
- `src` sources all relevant bash files (`.bashrc` `.bash_aliases` `.path`)
- `alia` opens up `.bashrc` for editing 

#### Clean Navigation
- `lc` and `cc` combine `clear` with `ls` and `cd` for a cleaner navigating experience
- `la` a shortcut for `ls -a'
- `md` is a mkdir with a cd into it after creation
- `up <optional:int>` moves you up 1 directory by default or uses the int you pass it
- `back` returns you to your previous working directory

#### Useful Commands
- `s` runs your last command as sudo
- `ports` use netstat to give you every currently open port 
- `sizeof <optional:file/dir>` displays the size of a file or directory, if given no arguments, runs on the current dir
- `diskspace` gives you a sorted list of who's taking up the most disk space
- `whereis <string - * works>` wrapper for sudo find name cause it has weird formatting 

#### History Based
- `hs <int:n>` prints the last n lines of the history file
- `replay <int:n>` runs the last n lines of your history file

### Other Things
`upgrade_nano.sh` - Uses [Scopatz's](https://github.com/scopatz/nanorc) installer to add more language highlighting to nano
