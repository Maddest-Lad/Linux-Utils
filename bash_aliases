# Ease of Editing
alias src='source ~/.bashrc' # Source Me
alias alia='nano ~/.bashrc' # Edit Me

# Clean Navigation 
alias lc='clear && ls'
alias cc='clear && cd'
alias la='ls -a'
md () { [ $# = 1 ] && mkdir -p "$@" && cd "$@" || echo "Error - no directory passed!";}
up() { cd $(eval printf '../'%.0s {1..$1}) && pwd;}
alias back='cd $OLDPWD'

# Useful Commands  
s() { sudo $(history -p '!!');}
alias ports='netstat -tulanp'
alias sizeof='du -sh'
alias diskspace='du -S | sort -n -r |more'

# Path Utils
function path {
  if [ -z "$1" ]
    then # No Args, Add Current Directory
      echo "export PATH=\$PATH:$(pwd):\$PATH" >> ~/.path
    else
      echo "export PATH=\$PATH:$1:\$PATH" >> ~/.path
  fi
  source ~/.bashrc
}






