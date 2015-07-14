export ZSH=$HOME/.oh-my-zsh

# Configure Liquid Prompt
# https://github.com/nojhan/liquidprompt
export LP_USER_ALWAYS=0
export LP_ENABLE_SSH_COLORS=1
export LP_ENABLE_RUNTIME=0
ZSH_THEME="liquidprompt"

# Don't automatically change dirs please
unsetopt AUTO_CD

# Self-explanatory
COMPLETION_WAITING_DOTS="true"
plugins=(git vagrant rvm brew bundler docker fabric gem python aws node npm)

source $ZSH/oh-my-zsh.sh

# Syntax highlighting for less
# brew install source-highlight
LESSPIPE=`which src-hilite-lesspipe.sh`
export LESSOPEN="| ${LESSPIPE} %s"
export LESS='-R'

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Add local npm library to PATH
function npm-path {
   export PATH=$(npm bin):$PATH
}

# Enable shims and autocompletion add to your profile
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# Enable auto-activation add to your profile
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"
