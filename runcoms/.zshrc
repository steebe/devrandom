# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# ----- MINE -----#
alias zshrc='vi ~/.zshrc'
alias srcz='source ~/.zshrc'
alias vimrc='vi ~/.vimrc'
alias gitconfig='vi ~/.gitconfig'
alias vi='vim'
alias ls='ls -la'

# ----- DEV -----#
alias steebe='cd ~/Documents/Development/steebe'
