# Source potential git branch
parse_git_branch()
{
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="{\[\e[0;31m\]\W\[\e[0m\]}\[\e[0;34m\]\$(parse_git_branch)\[\e[0m\] % "

# CLI colors for 'ls'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# PATH config
export PATH
export PATH=/usr/bin:$PATH

# Aliases:
alias atom="open -a 'Atom'"
alias bye="exit"
alias bp="vi ~/.bash_profile"
alias sbp="source ~/.bash_profile"
alias vimrc="vi ~/.vimrc"
alias cwd="pwd"
alias ls="ls -la"
alias goinfo="${GOPATH}bin/info"
alias sshpass="cat ~/.ssh/id_rsa.pub"
alias dockspace="defaults write com.apple.dock persistent-apps -array-add '{\"tile-type\"=\"spacer-tile\";}'; killall Dock"
