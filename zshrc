# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rbenv docker)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export RBENV_ROOT=/usr/local/opt/rbenv

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Automatically connect to tmux
#if [[ "$TERM" != "screen-256color" ]] then
 # tmux attach-session -t "$USER" || tmux new-session -s "$USER"
 # exit
#fi

export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
#export TERM="xterm-256color"

export PERL5LIB=/usr/local/Cellar/dpkg/1.15.8.13/:$PERL5LIB
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

export VAGRANT_DEFAULT_PROVIDER=vmware_fusion

autoload -U zmv

export AWS_CONFIG_FILE=~/.awsconfig
export AWS_KEYSET=eshamow_keys
export AWS_DEFAULT_REGION=us-west-2
export PATH=$PATH:~/google-cloud-sdk/bin
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
alias ggrf='git log --pretty --color --date=relative --graph --decorate=short --abbrev-commit --name-status'
export ANDROID_HOME=/usr/local/opt/android-sdk
eval "$(thefuck --alias)"
export GOROOT=/usr/local/opt/go
export GOPATH=/proj/go
export PATH=$PATH:$GOROOT/bin
export POWERLINE_CONFIG_COMMAND=~/Library/Python/2.7/bin/powerline-config
alias be='bundle exec'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH=$PATH:/usr/local/share/dotnet
source '/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
