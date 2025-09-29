# COLORS (usage: echo -e "This is ${RED}red text${NC}"
export NC='\033[0m' # No Color
export RED='\033[31m'
export GREEN='\033[32m'

alias emcas='emacs -nw'
alias emcsa='emacs -nw'
alias emasc='emacs -nw'
alias emacs='emacs -nw'
alias tailf='tail -f'
alias e='emacs -nw'
alias psgrep='ps aux | grep'

export TRUE=0
export FALSE=1

command_exists() {
    #this should be a very portable way of checking if something is on the path
    #usage: "if command_exists foo; then echo it exists; fi"
    type "$1" &> /dev/null
}

is_process_running() {
    out=`ps aux | grep $1 | grep -v grep`
    if [[ $out = *"$1"* ]]; then
	return ${TRUE}
    else
	return ${FALSE}
    fi
}

check_process() {
    if $(is_process_running $1) ; then
	echo -e "${GREEN}OK${NC}: $1 is running"
    else
	echo -e "${RED}KO${NC}: $1 not running"
    fi
}
