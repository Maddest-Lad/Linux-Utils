# Ease of Editing
alias src='source ~/.bashrc' # Source Me
alias alia='nano ~/.bashrc' # Edit Me

# Clean Navigation
alias lc='clear && ls'
alias cc='clear && cd'
alias la='ls -a'
function md { [ $# = 1 ] && mkdir -p "$@" && cd "$@" || echo "Error - no directory passed!";}
function up { cd $(eval printf '../'%.0s {1..$1}) && pwd;}
alias back='cd $OLDPWD'

# Useful Commands
function s { sudo $(history -p '!!');}
alias ports='netstat -tanp'
alias sizeof='du -sh'
alias diskspace='du -S | sort -n -r |more'
alias whereis='sudo find / -name'
alias smi='gpustat --show-power -i 1 --no-header'

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

# Tmux Utils
function at {
  if [ -z "$1" ]
    then
        tmux
        tmux rename-session "${PWD##*/}"
    else
        tmux attach -t $1
  fi
}
