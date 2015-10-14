# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Custom

export TERM=xterm-256color

#

alias c="clear"
alias gilp="git log --pretty=oneline"
conf() {
	if [ $# -gt 0 ]; then
		case $1 in
			"vim") 
				C=".vimrc"
				;;
			"zsh")
				C=".zshrc"
				;;
			"prezto")
				C=".zpreztorc"
				;;
		esac
	sudo cp ./$C ~/$C
   	echo "Configuration file copied"
	fi
}
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
	ln -s $(pwd) ~/work/dotfiles/symlinks/$1
	echo 'Bookmark created'
}
to() {
	cd $(readlink -f ~/work/dotfiles/symlinks/$1); ls -a
}
shist() {
	if [ $# -gt 0 ]; then
		history 1 | grep $1
	fi
}
vol() {
	alsamixer -c 0
}
shot() {
	scrot -sz ~/screenshots/$(date +%Y%m%d%H%M%S).png
}
empty() {
	if [ $# -gt 0 ]; then
		sudo rm -r ./$1; mkdir ./$1
	fi
}
alias chrome="chromium"
pong() {
  ping -c 6 8.8.8.8
}
