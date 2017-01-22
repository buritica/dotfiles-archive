# Path to your oh-my-zsh configuration.
ZSH=$HOME/.my/oh-my-zsh

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

# source private synced .env vars
# I used to keep gh oauth token here, but it's no longer needed (or safe)
# source ~/Dropbox/Sync/.env

# Load the shell dotfiles, and then some:
for file in ~/.my/dotfiles/source/.{exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# i like burgers
contains $HOST "crowntail" && export PS1="🏡  $PS1"
contains $HOST "deltatail" && export PS1="💼  $PS1"
contains $HOST "halfmoon" && export PS1="🎥  $PS1"
contains $HOST "rosetail" && export PS1="📺  $PS1"
contains $HOST "test" && export PS1="🔬  $PS1"
export PS1="🍔  $PS1"

# file size limit
ulimit -n 10000

# enable direnv
if hash direnv 2>/dev/null; then
	eval "$(direnv hook zsh)"
fi

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# add nodenv to the `$PATH`
if hash nodenv 2>/dev/null; then
  eval "$(nodenv init -)"
  export PATH="$HOME/.nodenv/bin:$PATH"
fi

# add yarn to the `$PATH`
if hash yarn 2>/dev/null; then
  export PATH="$PATH:`yarn global bin`"
fi

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
  source "$(brew --prefix)/etc/bash_completion";
elif [ -f /etc/bash_completion ]; then
  source /etc/bash_completion;
fi;

echo "dotfiles sourced"
