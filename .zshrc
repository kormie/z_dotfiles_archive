# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kormie"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gem bundler brew kormie)

source $ZSH/oh-my-zsh.sh

source ~/.git-completion.sh

# Customize to your needs...

xdvi() { command xdvi ${*:-*.dvi(om[1])} }
zstyle ':completion:*:xdvi:*' menu select yes
zstyle ':completion:*:xdvi:*' file-sort time

zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters 

bindkey '	' expand-or-complete-prefix

alias ls='ls -A1FG'

alias railsbox='rails c --sandbox'

alias gs='clear && git status'

alias clr='clear'

alias so='source'

alias c='clear'

alias log='git log --graph --pretty="format:%C(yellow)%h%Cred%d%Creset %s %C(white) %C(cyan)%an%Creset, %C(green)%ar%Creset"'

alias tree="ls -R | grep \":$\" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"

alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"

alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

alias memstart="/usr/local/bin/memcached -m 64 -p 11211 -u memcache -l 127.0.0.1 -d"

alias slogs="heroku logs --app ascend-learning-staging"

alias plogs="heroku logs --app ascend-learning"

function lipsum(){
  ~/bin/lipsum.rb $* | pbcopy
}

export PATH=/usr/local/bin:$PATH

[[ -s "/Users/Kormie/.rvm/scripts/rvm" ]] && source "/Users/Kormie/.rvm/scripts/rvm"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
