# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Custom
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
	cd $UP; ls
}
bm() {
	ln -s $(pwd) ~/work/dotfiles/symlinks/$1
}
to() {
	cd $(readlink -f ~/work/dotfiles/symlinks/$1)
}
pong() {
  ping -c 6 8.8.8.8
}
