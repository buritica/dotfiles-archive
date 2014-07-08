# Path to your oh-my-zsh configuration.
ZSH=$HOME/my/oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="geoffgarside"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails rvm osx lol)

# source other profile files
source $ZSH/oh-my-zsh.sh 
source /opt/boxen/env.sh

# source my dotfiles
export DOTFILES='~/my/dotfiles'
source $DOTFILES/.aliases
source $DOTFILES/.exports

echo "dotfiles sourced"