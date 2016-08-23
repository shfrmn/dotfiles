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
alias c="clear"
alias glp="git log --oneline"
up() {
	UP="../"
	if [ $# -gt 0 ]; then
		I=1
		while [ $I -lt $1 ]; do
			UP="$UP../"
			I=$[I+1]
		done
	fi
	cd $UP; ls -a
}
jump() {
	cd ../$1; ls -a
}
bm() {
	ln -s $(pwd) ~/symlinks/$1
	echo 'Bookmark created'
}
to() {
	cd $(readlink -f ~/symlinks/$1); ls -a
}
shist() {
	if [ $# -gt 0 ]; then
		history 1 | grep $1
	fi
}
vol() {
	alsamixer -c 0
}
empty() {
	if [ $# -gt 0 ]; then
		sudo rm -r ./$1; mkdir ./$1
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

screen() {
	if [ $# -gt 0 ]; then
		case $1 in
			"VGA")
				xrandr --output LVDS1 --off --output VGA1 --auto
				;;
			"default")
				xrandr --output VGA1 --off --output LVDS1 --auto
				;;
		esac
	else
		xrandr
	fi
}
