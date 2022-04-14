# Clean Terminal Navigation  
alias lc='clear && ls'
alias cc='clear && cd'
alias la='ls -a'

# Useful Commands
alias ports='netstat -tulanp'
alias sizeof='du -sh'
alias diskspace='du -S | sort -n -r |more'
alias back='cd $OLDPWD'

# Functions
md () { [ $# = 1 ] && mkdir -p "$@" && cd "$@" || echo "Error - no directory passed!";}
up() { cd $(eval printf '../'%.0s {1..$1}) && pwd;}
s() { sudo $(history -p '!!');}
