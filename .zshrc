# Path to your oh-my-zsh configuration.
ZSH=$HOME/my/oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="geoffgarside"

# oh-my-zsh plugins
plugins=(
	git git-extras github \
	heroku \
	osx \
	cp copydir copyfile \
	npm \
)

# source other profile files
source $ZSH/oh-my-zsh.sh 
source /opt/boxen/env.sh

# Load the shell dotfiles, and then some:
for file in ~/my/dotfiles/.{exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# i like burgers
export PS1="🍔  $PS1"

# file size limit
ulimit -n 10000

echo "dotfiles sourced"