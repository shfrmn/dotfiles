# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias c="clear"
alias conf="vim ~/.zshrc"
alias res=". ~/.zshrc"
alias gilp="git log pretty=oneline"
up() {
	if [ $# -eq 0 ]; then
			cd ../; ls
	else
		I=0
		P=""
		while [ $I -lt $1 ]; do
			P="$P../"
			I=$[I+1]
		done
		cd $P; ls
	fi
}
pong() {
  ping -c 6 8.8.8.8
}
