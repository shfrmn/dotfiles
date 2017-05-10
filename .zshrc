# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#

export TERM=xterm-256color
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin

# Autocompletion for s (command line web search)
if [ -f $GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash ]; then
    . $GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash
fi

#

alias off="sudo pacman -Syu && poweroff"
alias ga="git add"
alias gb="git branch"
alias gp="git push"
alias gc="git commit"
alias gs="git status"
alias glp="git log --oneline"

vol() {
	alsamixer -c 0
}
empty() {
	if [ $# -gt 0 ]; then
		rm -rf ./$1; mkdir ./$1
	fi
}

alias pls="sudo"

chrome() {
    . ~/bin/chromium-app.zsh noapp ${1:-0}
}

inbox() {
    . ~/bin/chromium-app.zsh pkclgpgponpjmpfokoepglboejdobkpl ${1:-0}
}

youtube() {
    . ~/bin/chromium-app.zsh blpcfgokakmgnkcojhhkbfbldkacnbeo ${1:-0}
}

tg() {
    . ~/bin/chromium-app.zsh clhhggbfdinjmjhajaheehoeibfljjno ${1:-0}
}

pong() {
  ping -c 6 8.8.8.8
}


