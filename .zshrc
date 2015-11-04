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
shot() {
	if [ $# -gt 0 ]; then
		scrot -sz ~/screenshots/$1.png
	else 
		echo "Repeat with a file name"
	fi
}
empty() {
	if [ $# -gt 0 ]; then
		sudo rm -r ./$1; mkdir ./$1
	fi
}
alias chrome="chromium"
alias transmission="transmission-qt"
alias pls="sudo"
pong() {
  ping -c 6 8.8.8.8
}

pcmn() {
	if [ $# -gt 0 ]; then
		case $1 in
			"orphans")
				sudo pacman -Rns $(pacman -Qtdq)
				;;
		esac
	fi
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
